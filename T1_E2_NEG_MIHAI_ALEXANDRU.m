a = randn(1, 20);  %elemente normale aleatorii
for i = 1:1:20
    if a(1, i) < 0     %sortarea pentru a afisa doar elementele negative
                         %ale vectorului
        disp (a(1, i)); %afisarea
    end
end