%a) -b ar trebui sa aiba aceeasi lungime cu a pentru a avea sens inmultirea

%   -inmultirea ab efectueaza suma 
a=0:.1:2;
b=ones(size(a))';
disp(a*b);

%b)
disp(b*a);

%c) se obtine un vector coloana, fiecare element fiind rezultatul
%   produsului dintre elementele vectorilor in ordine crescatoare
disp(diag(a)*b);