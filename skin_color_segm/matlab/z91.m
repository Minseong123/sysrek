%% zadanie 9.1
% model programowy

%% ladowanie obrazu
close all, clear all, clc;
imageRGB = imread('reka64.ppm');
imshow(imageRGB)

%% konwersja na YCbCr

% matrixCoef = [  0.299       0.587       0.114       ; 
%                 -0.168736   -0.331264   0.5         ;
%                 0.5         -0.418688   -0.081312
%          ];
% constCoef = [   0;
%                 128;
%                 128
%             ];
% 
% imageYCbCr = double(zeros(size(imageRGB)));
% 
% for i = 1:size(imageRGB, 1)
%     for j = 1:size(imageRGB, 2)
%         for k = 1:size(imageRGB, 3)
%         imageYCbCr(i, j, k) = matrixCoef(k, 1) * imageRGB(i, j, 1) + ...
%                                  matrixCoef(k, 2) * imageRGB(i, j, 2) + ...
%                                  matrixCoef(k, 3) * imageRGB(i, j, 3) + ...
%                                  constCoef(k);
%         end
%     end
% end
% imageYCbCr = uint8(imageYCbCr);

imageYCbCr = m_rgb2ycbcr(imageRGB); % funkcja matlaba ze zmienionymi wspolczynnikami
figure, imshow((imageYCbCr));

%% segmentacja obszaru twarzy

Ta = 120;
Tb = 150;
Tc = 110;
Td = 170;

imageSegm = zeros(size(imageRGB, 1), size(imageRGB, 2));
for x = 1:size(imageYCbCr, 1)
    for y = 1:size(imageYCbCr, 2)
        Cb = imageYCbCr(x, y, 2);
        Cr = imageYCbCr(x, y, 3);

        if Ta < Cb && Cb < Tb && Tc < Cr && Cr < Td
            imageSegm(x, y) = 1;
        else
            imageSegm(x, y) = 0;
        end 
    end 
end
imageSegm = 1 - imageSegm;
figure, imshow(imageSegm);

%% filtracja medianowa

imageMedian = medfilt2(imageSegm, [5 5]);
figure, imshow(imageMedian);

%% wyznaczanie środka ciężkości

m00 = 0;
m10 = 0;
m01 = 0;
for x = 1:size(imageMedian, 1)
    for y = 1:size(imageMedian, 2)
    m00 = m00 + boolean(imageMedian(x, y));  
    m10 = m10 + y * boolean(imageMedian(x, y));
    m01 = m01 + x * boolean(imageMedian(x, y));   
    end
end
x_sc = round(m10 / m00);
y_sc = round(m01 / m00);

figure, imshow(imageMedian)
ax = floor(axis);
hold on, line([x_sc x_sc], [ax(3) ax(4)], 'color', 'r', 'linewidth', 2);
line([ax(1) ax(2)], [y_sc y_sc], 'color', 'r', 'linewidth', 2);
