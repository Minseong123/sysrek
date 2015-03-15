input_filename = 'input.data';
output_filename = 'output.matlab';
output_stream = [];

file = fopen(input_filename, 'r');
data = fscanf(file, '%s');
fclose(file);

[l, r] = size(data);

for i = 1:r
    letter = data(i);
    val = fliplr(dec2bin(double(letter)));
    [a, width] = size(val);
    for j = (width + 1):8;
        val = [val '0'];
    end
    
    output_stream = [output_stream '01' val '00'];
end

file = fopen(output_filename, 'w');
fprintf(file, output_stream);
fclose(file);