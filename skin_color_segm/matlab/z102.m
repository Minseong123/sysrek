%% zadanie 10.2

%% załaduj plik graficzny
im = imread('taylor64.ppm');
%imshow(im)

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
 
 constCoefFI = fi(constCoef, 1, 8, 0, 'RoundingMethod', 'floor');
 
 %% wykonaj konwersję na liczbach FI
  
imageYCbCrFI = reshape(imFI, [], 3) * matrixCoefFI;
imageYCbCrFI(:, 1) = imageYCbCrFI(:, 1) + constCoefFI(1);
imageYCbCrFI(:, 2) = imageYCbCrFI(:, 2) + constCoefFI(2);
imageYCbCrFI(:, 3) = imageYCbCrFI(:, 3) + constCoefFI(3);
imageYCbCrFI = reshape(imageYCbCrFI, size(imFI));

% robi to samo co poniższa pętla

% for i = 1:size(im, 1)
%     for j = 1:size(im, 2)   
%         imageYCbCrFI(i, j, 1) = matrixCoefFI(1, 1) * imFI(i, j, 1) + ...
%                                  matrixCoefFI(1, 2) * imFI(i, j, 2) + ...
%                                  matrixCoefFI(1, 3) * imFI(i, j, 3) + ...
%                                  constCoefFI(1);
%         imageYCbCrFI(i, j, 1) = matrixCoefFI(2, 1) * imFI(i, j, 1) + ...
%                                  matrixCoefFI(2, 2) * imFI(i, j, 2) + ...
%                                  matrixCoefFI(2, 3) * imFI(i, j, 3) + ...
%                                  constCoefFI(2);
%         imageYCbCrFI(i, j, 1) = matrixCoefFI(3, 1) * imFI(i, j, 1) + ...
%                                  matrixCoefFI(3, 2) * imFI(i, j, 2) + ...
%                                  matrixCoefFI(3, 3) * imFI(i, j, 3) + ...
%                                  constCoefFI(3); 
%     end
% end

%% pozbycie się części ułamkowej
typ_wyniku = numerictype(1, 8, 0);

wynikFI = fi(zeros(size(im)));
for i = size(im, 1)
    for j = size(im, 2)
        for k = 1:3
            wynikFI(i, j, k) = quantize(imageYCbCrFI(i, j, k), typ_wyniku);
        end
    end
end
            
