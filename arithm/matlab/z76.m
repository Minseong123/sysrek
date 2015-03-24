a = 0.122;
b = 0.845;
c = 0.678;
z = (a + b) * c;
sign=1;     %0-unsigned value, 1-signed value       % sign
prec_i=1;   %number of integer part bits (Nc)       % one bit
prec_f=16;   %number of fractional part bits (Nu)   % eight bits
                       
wyniki = zeros(17, 1);

for prec_f = 0:16;
    word = 1 + prec_i + prec_f;                     % whole word
    a1 = fi(a, sign, word, prec_f);
    b1 = fi(b, sign, word, prec_f);
    c1 = fi(c, sign, word, prec_f);
    z1 = (a1 + b1) * c1;
    
    wyniki(prec_f + 1) = abs(z - double(z1));
%     disp('zmienno: ')
%     disp(z)
%     disp('stalo: ')
%     disp(double(z1))
%     disp('roznica: ')
%     disp(abs(z - double(z1)))
end

semilogy(wyniki, 'kx', 'lineWidth', 3), xlabel('Precyzja'), ylabel('Blad bezwzgledny');