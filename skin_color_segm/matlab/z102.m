%% zadanie 10.2

%% zaladuj plik graficzny
im = imread('taylor64.ppm');
% im = zeros(1, 1, 3);
% im(1, 1, :) = [243, 12, 45];
% imshow(im)

%% konwersja na FI
signed = 0;
wordLength = 8;
fractionLength = 0;
imFI = fi(im, signed, wordLength, fractionLength);

%% przygotuj macierz konwersji
matrixCoef = [  0.299       0.587       0.114       ; 
                -0.168736   -0.331264   0.5         ;
                0.5         -0.418688   -0.081312
         ];
constCoef = [   0;
                128;
                128
            ];
        
 signed = 1;
 wordLength = 18;
 fractionLength = wordLength - signed;
 matrixCoefFI = fi(matrixCoef, signed, wordLength, fractionLength,...
     'RoundingMethod', 'floor');
 
 constCoefFI = fi(constCoef, 1, 10, 0, 'RoundingMethod', 'floor');
 
 %% wykonaj konwersje na liczbach FI

for i = 1:size(im, 1)
    for j = 1:size(im, 2)
        for k=1:size(im, 3)
        imageYCbCrFI(i, j, k) = matrixCoefFI(k, 1) * imFI(i, j, 1) + ...
                                 matrixCoefFI(k, 2) * imFI(i, j, 2) + ...
                                 matrixCoefFI(k, 3) * imFI(i, j, 3) + ...
                                 constCoefFI(k);
        end
    end
end

%% pozbycie sie czesci ulamkowej
typ_wyniku = numerictype(1, 9, 0);

wynikFI = fi(zeros(size(im)), 1, 9, 0);
for i = 1:size(imageYCbCrFI, 1)
    for j = 1:size(imageYCbCrFI, 2)
        for k = 1:size(imageYCbCrFI, 3)
            wynikFI(i, j, k) = quantize(imageYCbCrFI(i, j, k), typ_wyniku);
        end
    end
end

figure, imshow(wynikFI.uint8)
