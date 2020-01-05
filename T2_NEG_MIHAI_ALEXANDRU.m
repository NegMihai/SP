syms t ;
P = 40; %perioada 
w0 = 2*pi/P; %pulsatia 

f = heaviside(t) - heaviside(t - 17);

N = 50; %numarul de coeficienti
    

[a0, a, b] = FUNCTIETEMA2_NEG_MIHAI_ALEXANDRU(f, P, N); %apelarea functiei

t_num = [-50:0.02:50];   %rezolutia 2 ms
f_num = a0;
t1 = [-50:0.02:50]; %unitatea de timp pentru semnal dreptunghiular
freq = 0.025; %frecventa 
square_wave = 0.5 + 0.5 * square(2*pi*freq.*t1, 42.5); %tip de semnal 


for n = 1:N
    armonica = a(n)*cos(n*w0*t_num) + b(n)*sin(n*w0*t_num); %adunare armonica 
    f_num = f_num + armonica; %adunare fundamentala cu armonica 
      subplot(3,1,2) %afisare semnal reconstruit
    plot(t1,square_wave,'blue','LineWidth',2)   %ajustari la semnal pentru a fii usor vizibil 
    title('Semnal reconstruit') %titlu
    hold on    
    plot(t_num,f_num,'green')
    hold off

end

hold on

subplot(3,1,1)   %afisare xt
plot(t1, square_wave)
title('Semnal x(t) rezolutie 2 ms') %titlu
hold off

for n = 1:50
    An(n) = sqrt(a(n)^2+b(n)^2); %functie de calcul pentru amplitudine
end

x = [fliplr(An) a0 An];   % pentru mirror
k = -50:1:50;
subplot(3,1,3) %afisare spectrul lui x(t)
stem(k, x)
hold on
plot(k, x)
title('Spectrul lui x(t)') %titlu
%Am afisat cele 3 semnale cerute 
%Spectrul de la final arata armonicele semnalului
%Semnalul initial a fost construit conform cerintelor si are un duty cycle
%de 42.5%
%Rezultatul obtinut la final corespunde valorilor calculate 


