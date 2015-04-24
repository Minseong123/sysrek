%% konwersja RGB na HSV

%% ładowanie obrazu
im = imread('taylor64.ppm');

%% skalowanie na 0-1
im = double(im) ./ 256.0;

imFI = fi(im, 1, 9, 8);

%% wyznaczenie poszczególnych składowych HSV dla każdego piksela

imHSVFI = imFI;

for i = 1:size(imFI, 1)
    for j = 1:size(imFI, 2)
        clc, disp([num2str((i * size(im, 1) + j) * 100 / (size(im, 1) * size(im, 2))) '%'])
        R = fi(double(imFI(i, j, 1)), 1, 9, 8);
        G = fi(double(imFI(i, j, 2)), 1, 9, 8);
        B = fi(double(imFI(i, j, 3)), 1, 9, 8);
        v_min = min([R, G, B]);
        v_max = max([R, G, B]);
        % wartość V
        V = v_max;
        
        %wartość S
        if V == 0
            S = fi(0, 1, 8, 8);
        else
            S = double(V - v_min);
            S = S / double(V);
            S = fi(S, 1, 8, 8);
        end;
        
        %wartość H
        if V == v_min;
            H = fi(0, 1, 8, 8);
        elseif V == R; %R
            H = fi(double(G - B) ...
                / double(V - v_min), 1, 16, 8);
        elseif V == G; %G
            H = fi(double(B - R) ...
                / double(V - v_min) + 2, 1, 16, 8);
        else V == B; %G
            H = fi(double(R - G) ...
                / double(V - v_min) + 4, 1, 16, 8);
        end
        if H < 0;
            H = H + 6;
        end
        typ_wyniku = numerictype(1, 9, 8);

        H = fi(double(H) / 6, typ_wyniku);
        S = quantize(S, typ_wyniku);
        V = quantize(V, typ_wyniku);
        
        imHSVFI(i, j, :) = [H, S, V];
    end
end

close all;
figure, imshow(double(imHSVFI));
figure, imshow(rgb2hsv(im));