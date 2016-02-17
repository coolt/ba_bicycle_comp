%% PA - Kennlinie Hardware

clc, clear all

%% Parameter

% Abstand r(Radius) Magnet [m]
r_m = 0.250; 
% Abstand r(Radius) Rad [m]
r_r = 0.330;
% Belastungs Widerstand [Ohm]
R = [0 500 1000 1500 2000 3000 5000 7500 10000];

%% Daten Eingabe

% delta T [s] --> Eingabe in [ms]
delta_T = [ ];

% Spannung U min/max [V] --> Eingabe in [mV]
U_min = [ ];
U_max = [ ];

%% Daten Umrechnungen 

delta_T = delta_T / 1000;
U_min = U_min / 1000;
U_max = U_max / 1000;

%% Daten Auswertung

% gemittelte Spannung U [V]
U_mean = (U_min + U_max)/2

% gemittelter Strom [A]
I_mean = U_mean / R(2)

% gemittelte Leistun [W]
P_mean = U_mean .* I_mean

[hAx,hLine1,hLine2] = plotyy(U_mean*1e3,I_mean*1e6,U_mean*1e3,P_mean*1e6);
title('U-I-P');
xlabel('Umean[mV]');
ylabel(hAx(1),'Imean[\muA]');
ylabel(hAx(2),'Pmean[\muW]');



