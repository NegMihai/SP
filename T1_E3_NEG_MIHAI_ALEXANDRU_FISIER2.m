function [medie, patrat, matrice] = T1_E3_NEG_MIHAI_ALEXANDRU_FISIER2( z ) %aici se afla functiile 
%pentru e3 vectorii fiind in celalalt fisier
medie = mean(real(z)) %media pentru punctul a
patrat = z.^2        %ridicarea la patrat a elementelor
matrice = z * z'    %inmultirea dintre vectorul initial cu transpusul
 