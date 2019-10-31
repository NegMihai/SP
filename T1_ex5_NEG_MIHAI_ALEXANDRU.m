A=1.5; %amplitudinea
T=4;  %numarul de perioade
F=1/T; %freventa f
t=0:0.002:4; % timpul de la 0 la 4 secunde cu rezolutie temporara de 2ms
s=A*sin(2*pi*F*t); %sintaxa sin deseneaza un grafic sinusoidal cu amplitudinea A, perioada t si frecventa F
plot(t,s,'-')
xlabel('Timp[s]') %noteaza axa  ox pentru a reprezenta timpul
ylabel('Amplitudine') %noteaza axa oy pentru a reprezenta amplitudinea
title('semnal sinusoidal periodic')  %titlul graficului
grid;
