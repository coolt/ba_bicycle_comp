%% PA Kennlinie_Hardware

Vrad = [10 20 30 40 50];                                    % [km/h]

Umean_500 = [56.5 98.5 151 164 230];                        % [mV]
Imean_500 = [113.68 198.19 303.82 329.98 462.78];           % [uA]

Umean_1000 = [66.5 133.5 256 322 384];                      % [mV]
Imean_1000 = [66.04 132.57 254.22 319.76 381.33];           % [uA]

Umean_2000 = [94.5 245 346 504 664];                        % [mV]
Imean_2000 = [47.13 122.19 172.57 251.37 331.17];           % [uA]

Pmean_500 = ((Umean_500*1000).*Imean_500)/1e06;             % [uW]
Pmean_1000 = ((Umean_1000*1000).*Imean_1000)/1e06;          % [uW]
Pmean_2000 = ((Umean_2000*1000).*Imean_2000)/1e06;          % [uW]


%% Plot

subplot(2,3,4)
plot(Umean_500, Imean_500, Umean_1000, Imean_1000, Umean_2000, Imean_2000)
title('U-I');legend('500Ohm','1000Ohm','2000Ohm');xlabel('Umean[mV]');ylabel('Imean[\muA]');

subplot(2,3,1)
[hAx,hLine1,hLine2] = plotyy(Umean_500,Imean_500,Umean_500,Pmean_500);
title('U-I-P 500Ohm');xlabel('Umean[mV]');ylabel(hAx(1),'Imean[\muA]');ylabel(hAx(2),'Pmean[\muW]');

subplot(2,3,2)
[hAx,hLine1,hLine2] = plotyy(Umean_1000,Imean_1000,Umean_1000,Pmean_1000);
title('U-I-P 1000Ohm');xlabel('Umean[mV]');ylabel(hAx(1),'Imean[\muA]');ylabel(hAx(2),'Pmean[\muW]');

subplot(2,3,3)
[hAx,hLine1,hLine2] = plotyy(Umean_2000,Imean_2000,Umean_2000,Pmean_2000);
title('U-I-P 2000Ohm');xlabel('Umean[mV]');ylabel(hAx(1),'Imean[\muA]');ylabel(hAx(2),'Pmean[\muW]');

subplot(2,3,5)
plot(Vrad, Umean_500,'x', Vrad, Umean_1000,'x', Vrad, Umean_2000,'x')
title('V-U');legend('500Ohm','1000Ohm','2000Ohm');xlabel('Geschwindigkeit [km/h]');ylabel('Umean [mV]');


