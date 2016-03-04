package ch.ines.zhaw.zhaw_blens;

import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Chronometer;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import ch.ines.zhaw.bleines.R;


public class TimedArrayAdapter extends ArrayAdapter<String> {

	private int mResource;
	private LayoutInflater mInflater;
	private int actIndex = -1;
	private List<Boolean> running = new ArrayList<Boolean>();
	private List<Chronometer> chronometers = new ArrayList<Chronometer>();
    private List<TextView> temperatures = new ArrayList<TextView>();
    private List<String> temperaturesString = new ArrayList<String>();
	private List<View> views = new ArrayList<View>();
	private Context cont;

	public TimedArrayAdapter(Context context, int resource,
			int textViewResourceId, List<String> objects) {
		super(context, resource, textViewResourceId, objects);
		cont = context;
		mResource = resource;
		mInflater = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
	}

	public void resetTimer(int position){
		if(chronometers.size()>position){
			chronometers.get(position).setBase(SystemClock.elapsedRealtime());
			chronometers.get(position).start();
		}
	}

	@Override
	public void add(String object){
		actIndex = super.getCount();
		running.add(actIndex, false);
		super.insert(object, actIndex);


	}

    public void addTemp(int position, String temp){
        temperaturesString.add(position,temp);
    }

    public void setTemp(int position, String temp){
        if(temperatures.size()>position){
            temperatures.get(position).setText(temp);
            if(temperaturesString.size()>position){
                temperaturesString.set(position,temp);
            }
        }
    }

	// method getView start for each row in adapter to show it in ListView
	@Override
	public View getView(int position, View convertView, ViewGroup parent) {                
		View v = new View(cont);
		if(!running.get(position)){
			v = mInflater.inflate(mResource, parent, false);
			LinearLayout ll = (LinearLayout) v;
			TextView tv = (TextView) ll.getChildAt(0);
			String item = getItem(position);
			if (item instanceof CharSequence) {
				tv.setText((CharSequence)item);
			} else {
				tv.setText(item.toString());
			}
			running.set(position, true);
            RelativeLayout tmpRelLay = (RelativeLayout) ll.getChildAt(1);
			Chronometer tmpChrono = new Chronometer(cont);
			tmpChrono = (Chronometer) tmpRelLay.getChildAt(0);
			chronometers.add(position, tmpChrono);
			chronometers.get(position).setBase(SystemClock.elapsedRealtime());
			chronometers.get(position).start();
            TextView tmpTempView = (TextView) tmpRelLay.getChildAt(1);
            tmpTempView.setText(temperaturesString.get(position));
            temperatures.add(position,tmpTempView);
			views.add(position, v);
		}else{
			v = views.get(position);
		}
		return  v; 
	}
}
