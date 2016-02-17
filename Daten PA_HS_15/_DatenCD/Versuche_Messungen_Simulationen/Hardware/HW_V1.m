%% Projekt Arbeit HS15 ZHAW
%  Messprotokoll Hardware
%  
%  @Daniel Studer, Roman Schneider
%  18.12.2015

%% Geschwindigkeit - Durchlaufzeit Magnet

v = [5 10 15 20 30 40 50 60 70 80 90 100];      % Geschwindigkeit [km/h]
r = 0.250;                                      % Rad-Radius [m]
s = 2*pi*r;                                     % Rad-Umfang [m]
delta_t = s./(v/3.6);                           % Zeit Magnetdurchlauf [s]

% Plot: 
figure(1);  plot(v,delta_t)
grid on
title('Geschwindigkeit - Durchlaufzeit Magnet')
xlabel('Geschwindigkeit [km/h]')
ylabel('Durchlaufzeit Magnet [s]')

%% Spannungskennlinie der Spule 
%  Spulen-Typ: PREMO 3015N-0238J 32/06
%  Versuch-Nr.: 1

% Aufgenommene Messpunkte:
t1 = [1.033 0.667 0.385 0.250 0.190 0.135 0.109];   % delta t [s]
u1 = [0.680 1.080 1.880 2.800 3.680 5.040 6.480];   % Spitzenwert [V]

% Berechnung:
v1 = s./t1*3.6;    % Geschwindigkeit [km/h]

% Plot:
figure(2);  plot(v1,u1)
grid on
title('Spannungskennlinie Spule PREMO')
xlabel('Geschwindigkeit [km/h]')
ylabel('Spannungsspitze [V]')

%% Spannungskennlinie Hardware
%  Versuchs-Nr.: 2
%  Komponente:  - Diodenbrücke      - 2 Begrenzungs-Dioden
%               - Kondensator       - Lastwiderstand 10kOhm

% Aufgenommene Messpunkte:
t2     = [1.122 0.638 0.395 0.193 0.149 0.124 0.108];   % delta t [s]   
u2_max = [0.100 0.276 0.500 0.940 0.992 1.040 1.056];   % max. Spannung [V]
u2_min = [0.076 0.244 0.468 0.900 0.960 1.000 1.016];   % min. Spannung [V]

% Berechnungen:
i2_mittel = ((u2_max + u2_min)/2)/1e4;           % Strom [A]
v2 = s./t2*3.6;                                  % Geschwindigkeit [km/h]

% Plot:
figure(3);  plot(v2,u2_max,v2,u2_min)
grid on
title('Spannungskennlinie Hardware V2')
xlabel('Geschwindigkeit [km/h]')
ylabel('Spannung DC [V]')
legend('Umax','Umin','Location','best')

figure(4);  plot(v2,i2_mittel)
grid on
title('Stromkennlinie Hardware V2')
xlabel('Geschwindigkeit [km/h]')
ylabel('Strom [A]')

%% Spannungskennlinie Hardware
%  Versuchs-Nr.: 3
%  Komponente:  - Diodenbrücke      - 3 Begrenzungs-Dioden
%               - Kondensator       - Lastwiderstand 10kOhm

% Aufgenommene Messpunkte:
t3     = [1.137 0.640 0.363 0.283 0.188 0.160 0.127 0.084];     
% delta t [s] 
u3_max = [0.108 0.300 0.560 0.740 1.080 1.280 1.520 1.870];     
% max. Spannung [V]
u3_min = [0.080 0.240 0.480 0.660 1.000 1.240 1.420 1.730];     
% min. Spannung [V]

% Berechnungen:
i3_mittel = ((u3_max + u3_min)/2)/1e4;            % Strom [A]
v3 = s./t3*3.6;                                   % Geschwindigkeit [km/h]

% Plot:
figure(5);  plot(v3,u3_max,v3,u3_min)
grid on
title('Spannungskennlinie Hardware V3')
xlabel('Geschwindigkeit [km/h]')
ylabel('Spannung DC [V]')
legend('Umax','Umin','Location','best')

figure(6);  plot(v3,i3_mittel)
grid on
title('Stromkennlinie Hardware V3')
xlabel('Geschwindigkeit [km/h]')
ylabel('Strom [A]')


%% Spannungskennlinie Hardware
%  Versuchs-Nr.: 4
%  Komponente:  - Villardschaltung(2 Stufen)
%               - Lastwiderstand 10kOhm

% Aufgenommene Messpunkte:
t4     = [1.108 0.552 0.366 0.298 0.198 0.148 0.115];  % delta t [s] 
u4_max = [0.100 0.390 0.590 0.850 1.310 1.830 2.270];  % max. Spannung [V]
u4_min = [0.005 0.010 0.090 0.150 0.450 0.770 1.170];  % min. Spannung [V]

% Berechnungen:
i4_mittel = ((u4_max + u4_min)/2)/1e4;            % Strom [A]
v4 = s./t4*3.6;                                   % Geschwindigkeit [km/h]

% Plot:
figure(7);  plot(v4,u4_max,v4,u4_min)
grid on
title('Spannungskennlinie Hardware V4')
xlabel('Geschwindigkeit [km/h]')
ylabel('Spannung DC [V]')
legend('Umax','Umin','Location','best')

figure(8);  plot(v4,i4_mittel)
grid on
title('Stromkennlinie Hardware V4')
xlabel('Geschwindigkeit [km/h]')
ylabel('Strom [A]')