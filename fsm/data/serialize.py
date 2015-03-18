input_filename = 'input.data';
output_filename = 'output.python';

stream = []
with open(input_filename, 'r') as f:
	line = f.readline()
	for c in line:
		if c == '\n':
			break
		value = int(ord(c))
		string = bin(value)[2:]
		string = string[::-1] + '0' * (8 - len(string))
		
		string = '01' + string + '00'
		stream.append(string)

with open(output_filename, 'w') as f:
	for i in stream:
		f.write("%s\n" % i)
