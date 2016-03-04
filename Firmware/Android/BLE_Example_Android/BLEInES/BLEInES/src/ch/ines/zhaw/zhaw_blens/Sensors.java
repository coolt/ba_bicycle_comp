package ch.ines.zhaw.zhaw_blens;




import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import ch.ines.zhaw.bleines.R;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.PowerManager;
import android.view.MenuItem;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import static android.view.WindowManager.*;

public class Sensors extends Activity {
	/**
	 * Contains all Sensors. The List is filled with {@link #adapter} only!
	 */
	List<String> sensors;

	/**
	 * Contains the actual measure of every sensor. This list is filled from hand.
	 * measures contains on position 0 the measure of the sensor at position 0 in {@link #sensors}. And so on...
	 */
	List<String> measures;

	/**
	 * The Adapter that connects the list {@link #sensors} with the ListView {@link #listView}.
	 */
	TimedArrayAdapter adapter;

	/**
	 * The View which displays a list of sensors.
	 */
	ListView listView;

	/**
	 * Saves which sensor is selected. Negative Value means: NO sensor selected.
	 */
	int selctedSensor = -1;

	/**
	 * Request-ID that defines the request when the user was asked to enable Bluetooth.
	 */
	private static final int REQUEST_ENABLE_BT = 0;

	/**
	 * The Bluetoothadapter which is used to connect to the radio of the Android device
	 */
	private BluetoothAdapter mBluetoothAdapter;

	/**
	 * mScanning is used to control, if the Bluetoothscan is already running. The value changes only in {@link #scanLeDevice(boolean)}.
	 * For example to check that the scan is not running before starting it.
	 */
	private boolean mScanning;

	/**
	 * The textview which displays detail information of the selected measure.
	 */
	TextView textView;

	/**
	 * runs counts how many times the callback function {@link #mLeScanCallback} is called. runs is not needed, its only a help for the developer.
	 */
	int runs = 0;

    /**
     * Used to leave the screen on while the app is running
     */
    protected PowerManager.WakeLock mWakeLock;

	/**
	 * Init the lists, the adapter.
	 * Check if BLE is supported on the device. 
	 * Define the callback for a clicked item.
	 */
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_sensors);

		//Init lists
		sensors = new ArrayList<String>();
		measures = new ArrayList<String>();

		//Init adapter
		adapter = new TimedArrayAdapter(this, R.layout.row, R.id.SensorName, sensors);

		//Init listView and set adapter and init textView
		listView = (ListView) findViewById(R.id.sensorList);
		listView.setAdapter(adapter);
		textView = (TextView)findViewById(R.id.sensorDetail);

		//Display the measure of the clicked sensor.
		listView.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> arg0, View arg1, int arg2, long arg3) {
				selctedSensor=arg2;
				textView.setText(measures.get(selctedSensor));
			}
		}); 

		//Disable Screenorantation, so the Application stays always in vertical mode
		setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_NOSENSOR);

		//Check if the device supports BluetoothLowEnergy. If not: finish the app with a Errormassege to the User.
		if (!getPackageManager().hasSystemFeature(PackageManager.FEATURE_BLUETOOTH_LE)) {
			Toast.makeText(this, R.string.ble_not_supported, Toast.LENGTH_SHORT).show();
			finish();
		}

        //Keep the Screen on!
        getWindow().addFlags(LayoutParams.FLAG_KEEP_SCREEN_ON);
	}

	/**
	 * Check if the Bluetoothscan is allready running. If not: ask the user to activate Bluetooth and then start the Bluetoothscan.
	 */
	protected void onStart(){
		super.onStart();
		//only do something if blescan is not allready running
		if(!mScanning){

			// Initializes Bluetooth adapter.
			final BluetoothManager bluetoothManager =
					(BluetoothManager) getSystemService(Context.BLUETOOTH_SERVICE);
			mBluetoothAdapter = bluetoothManager.getAdapter();

			// Ensures Bluetooth is available on the device and it is enabled. If not,
			// displays a dialog requesting user permission to enable Bluetooth.
			if (mBluetoothAdapter == null || !mBluetoothAdapter.isEnabled()) {
				Intent enableBtIntent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
				startActivityForResult(enableBtIntent, REQUEST_ENABLE_BT);
			}

			//Start the Bluetoothscan
			scanLeDevice(true);
		}
        /*
        * Let the screen on while the app is running
        * */
        final PowerManager pm = (PowerManager) getSystemService(Context.POWER_SERVICE);
        this.mWakeLock = pm.newWakeLock(PowerManager.SCREEN_DIM_WAKE_LOCK, "My Tag");
        this.mWakeLock.acquire();

	}

	/**
	 * Stop the Bluetoothscan if the app stops
	 */
	protected void onStop(){
		super.onStop();
        //allow the device to turn off the screen again
        this.mWakeLock.release();
		//Stop the Bluetoothscan
		scanLeDevice(false);


	}

	/**
	 * Close the app if the user decided to NOT activate Bluetooth. startActivityForResult was called in {@link #onStart()}.
	 */
	protected void onActivityResult(int requestCode, int resultCode,
			Intent data) {

		//Check if it was the Request for enable Bluetooth.
		if (requestCode == REQUEST_ENABLE_BT) {

			//Act only if the User clicked no.
			if (resultCode != RESULT_OK) {

				//BLE was not enabled by the user. Show an Error-Popup and finish the app.
				Toast.makeText(this, R.string.ble_not_activated, Toast.LENGTH_LONG).show();
				finish();
			}
		}
	}

	/**
	 * Function to start and stop the Bluetoothscan. For every detected device the Callbackfunction {@link Sensors#mLeScanCallback} is called.
	 * @param enable True if the scan should start, false if the scan should stop.
	 */
	private void scanLeDevice(final boolean enable) {
		if (enable) {
			mScanning = true;
			mBluetoothAdapter.startLeScan(mLeScanCallback);
		} else {
			mScanning = false;
			mBluetoothAdapter.stopLeScan(mLeScanCallback);
		}
	}

	/**
	 * The Callback that handles all the received data. Special: The sensors are sending data in advertising mode. A pairing is not required.
	 */
	private BluetoothAdapter.LeScanCallback mLeScanCallback =
			new BluetoothAdapter.LeScanCallback() {
		@Override
		public void onLeScan(final BluetoothDevice device, int rssi,
				final byte[] scanRecord) {
			runOnUiThread(new Runnable() {

				/**
				 * Calculates all data received by any sensor and stores it. If data from a new sensor arrives, the sensor is added into the sensorlist.
				 */
				@Override
				public void run() {

					//Count how many times this callback is called (only for developer)
					runs++;

					//Prepare the format for printing measure values
					DecimalFormat myFormat = new DecimalFormat("0.0");

					//Copy the received data into a new byte array
					byte[] data = scanRecord.clone();

					//Get the uuid of the sensor
					int uuid = 0x00;
					uuid= uuid|((int)(data[6])&0x00ff);
					uuid = uuid<<8;
					uuid=uuid|((int)(data[5])&0x00ff);

					//get the custNr (Vendor) of the sensor
					int custNr = ((int)(data[7])&0x00ff);

					//uuid has to be 0xDE00
					// No sensors with cust 5 or 8
					//No vendors with ID smaller than 8
					if((uuid == 0xde00) && (custNr !=5) && (custNr!=8) && (custNr<8)){

						//Sensor ID
						int sensId = ((int)(data[8])&0x00ff);

						//Temperature
						long tempSens =	(((long)(data[12]))&0x00ff)<<8 ;
						tempSens = tempSens + (((long)(data[11]))&0x00ff);
						tempSens &= ~0x0003;
						float realTemp = -46.85f + (175.72f*((float)tempSens/65536.0f));

						//Humidity
						long humidSens = 0;
						humidSens = (((long)(data[10]))&0x00ff)<<8 ;
						humidSens = humidSens + (((long)(data[9]))&0x00ff);
						humidSens &= ~0x03; // clear bits [1..0] (status bits)
						float humidityRH = (float) (-6.0 + (125.0*(float)humidSens/65536) ); // RH= -6 + 125 * SRH/2^16

						//Initialize pressure and Coordinates
						long pressure = 0;
						int xCoord = 0;
						int yCoord = 0;

						//Coordinates
						if(data[13]!=0 || data[14]!=0){
							xCoord = data[13];
							xCoord &= 0x00ff;//only last 8 bits matters
							yCoord = data[14];
							yCoord &= 0x00ff;//only last 8 bits matters
						}

						//Pressure
						if(data[16]!=0 || data[17]!=0 || data[17]!=0){
							//uint32_t pressure = data[18]<<8;
							pressure = (pressure + data[17])<<8;
							pressure = (pressure + data[16])<<8;
							pressure = pressure + data[15];
							pressure &= 0x00ffffff;//only last 24 bits matters
						}

						//Prepare the String for the Sensor list
						//This string is the id of the element in the list. If you add the same sensor twice, the second add will overwrite the first.
						String actSensor;
						if(custNr==1){
							actSensor = "InES (Vendor: 1)\nID: "+sensId;
						}else if(custNr==2){
							actSensor = "EM (Vendor: 2)\nID: "+sensId;
						}else if(custNr==3){
							actSensor = "Sensirion (Vendor: 3)\nID: "+sensId;
						}else if(custNr==4){
							actSensor = "G24i (Vendor: 4)\nID: "+sensId;
						}else if(custNr==7){
							actSensor = "Asulab (Vendor: 7)\nID: "+sensId;
						}else{
							actSensor="Vendor: "+custNr+"\nID: "+sensId;
						}
                        //actSensor = actSensor + "\n" + myFormat.format(realTemp) + " °C";
						

						//Prepare the String for the measure detail view (textview)
						String actMeasure="Temperature:\u0009\u0009\u0009"+myFormat.format(realTemp)+" \u00B0C\nHumidity:\u0009\u0009\u0009\u0009\u0009\u0009"+myFormat.format(humidityRH)+" %\nPressure:\u0009\u0009\u0009\u0009\u0009\u0009"+myFormat.format(pressure)+" mBar\nPosition:\u0009\u0009\u0009\u0009\u0009\u0009\u0009"+xCoord+" x "+yCoord;

						addSensor(actSensor, actMeasure, myFormat.format(realTemp)+" °C");
					}
				}
			});
		}
	};

	/**
	 * This function manages all data. if e new listEntry is added, a new listItem will appear on the list.
	 * If a listEntry, that is already on the list is added, the entryDetail will be updated.
	 * @param listEntry
	 * The Name that appears in the list. If a listEntry is is added for the second time, only the detail will be updated.
	 * @param entryDetail
	 * The detail of the added entry. Use "\n" for new line. Use "\u0009" for tabulator.
	 */
	private void addSensor(String listEntry, String entryDetail, String temp){
		//Check if the sensor is already in the sensor list
		int index=0;
		int max=adapter.getCount();
		Boolean newSensor=true;
		for(index=0;index<max;index++){

			//if the sensor is found in the list, update the measure entry for this sensor and restart the timer
			if(listEntry.equals(adapter.getItem(index))){
				newSensor=false;
				measures.remove(index);
				measures.add(index, entryDetail);
				adapter.resetTimer(index);
                adapter.setTemp(index,temp);
				break;
			}		
		}

		//If the sensor is a new one, add it to the sensorlist.
		//Add also the new measure to the measurelist with same index.
		if(newSensor){
            adapter.addTemp(index,temp);
			adapter.add(listEntry);
			index=adapter.getPosition(listEntry);
			measures.add(index, entryDetail);

			//After a sensor was added, a sensor have to be selected from the user again
			textView.setText(getResources().getString(R.string.plsSelectItem));
			selctedSensor=-1;
			Toast.makeText(getApplicationContext(), "A new Sensor was added:\n" + listEntry, Toast.LENGTH_SHORT).show();
		}

		//If the data comes from the actually selected sensor: update the displayed textview.
		if(selctedSensor==index){
			textView.setText(measures.get(selctedSensor));
		}
	}
	
	//Uncomment if e menu should be included....
//	@Override
//	public boolean onCreateOptionsMenu(Menu menu) {
//		// Inflate the menu; this adds items to the action bar if it is present.
//		getMenuInflater().inflate(R.menu.sensors, menu);
//		return true;
//	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
	    // Handle presses on the action bar items
	    switch (item.getItemId()) {
	        case R.id.action_perferences:
	        	//Toast.makeText(getApplicationContext(), "Perferences was pressed!:-)\n", Toast.LENGTH_SHORT).show();//debug
//	        	Intent intent = new Intent(this, NfcActivity.class);
//	        	startActivity(intent);
	            return true;
	        default:
	        	//Toast.makeText(getApplicationContext(), "Unknown menu function was pressed:-(\n", Toast.LENGTH_SHORT).show();
	            return super.onOptionsItemSelected(item);
	    }
	}

}
