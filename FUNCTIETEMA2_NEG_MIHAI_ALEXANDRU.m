function [a0, a, b] = FUNCTIETEMA2_NEG_MIHAI_ALEXANDRU(f, P, N)
syms t;
P=40; %perioada 
w0=2*pi/P; %pulsatie 

f=heaviside(t)-heaviside(t-17);

a0_symbol=1/P*int(f,t,0,P);
a0=double(a0_symbol);

for n=1:50;   
    a_sym(n)=2/P*int(f*cos(n*w0*t),t,0,P); %calcul termen fourier a
    b_sym(n)=2/P*int(f*sin(n*w0*t),t,0,P); %calcul termen fourier b
    
    
    a(n)=double(a_sym(n)); %afisam valoarea lor in loc de simbol
    b(n)=double(b_sym(n)); %afisam valoarea lor in loc de simbol
end