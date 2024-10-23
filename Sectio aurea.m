n = input("Podaj ilość elementów: "); 

%Pierwsze elementy ciągu Fibonacci
element_1=0; 
element_2=1;

i=-2;
%Cykl,dla poszukiwanie złotej liczby zbliżonej do phi ciągu Fibonacciego
while i<=n
element_3 = element_1+element_2;
log_ratio = log10(element_3) / log10(element_2);

%Wykres w skali logarytmicznej
plot(i+1, log_ratio, 'o')
xlim([0 14]);
ylabel("Logarytmic scale of golden number")
set(gca,"Yscale","log");
hold on;

%Zmiana kolejności liczb dla następnego poszukiwania złotej liczby 
i=i+1;
element_1 = element_2;
element_2 = element_3;
end

%Wynik
print -depsc epsFig