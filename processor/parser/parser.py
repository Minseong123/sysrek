def int_to_binary(num, length, is_param = False):
	if not is_param:
		b = bin(num)
	else:
		try:
			b = bin(int(num))
		except:
			reg = num[1]
			b = bin(int(reg))

	b = b[2:]
	l = len(b)
	return ('0' * (length - l)) + b

def parse_arg(inst, arg, args):
	l = instructions['lens'][arg]
	if isinstance(instructions[inst][arg], str):
		return int_to_binary(args[ord(instructions[inst][arg]) - ord('a')], l, True)
	else:
		return int_to_binary(instructions[inst][arg], l)

def parse_line(line):
	line = line.strip(',')
	elems = line.split(' ')
	inst = elems[0]
	args = elems[1:]
	parser = instructions[inst]

	binary = '0' * 6 + '{}' + '00' + '{}' + '0' + '{}' + '{}' + '0' * 3 + '{}' + '{}' + '{}'
	pc_op = parse_arg(inst, 'pc_op', args)
	alu_op = parse_arg(inst, 'alu_op', args)
	rx_op = parse_arg(inst, 'alu_op', args)
	imm_op = parse_arg(inst, 'alu_op', args)
	ry_op = parse_arg(inst, 'ry_op', args)
	rd_op = parse_arg(inst, 'rd_op', args)
	d_op = parse_arg(inst, 'd_op', args)
	imm = parse_arg(inst, 'imm', args)
	binary = '0' * 6 + pc_op + '00' + alu_op + '0' + rx_op + imm_op + ry_op + rd_op + d_op + imm
	return '{0:0>8x}'.format(int(binary, 2))

instructions = {}
# schemat mapy:
# instrukcja: {parametry}
# abc: argumenty
instructions['lens'] = {
	'pc_op': 2,
	'alu_op': 2,
	'rx_op': 3,
	'ry_op': 3,
	'imm_op': 1,
	'rd_op': 1,
	'd_op': 3,
	'imm': 8
}
instructions['nop'] = {
	'pc_op': 0,
	'alu_op': 3,
	'rx_op': 6, #X
	'ry_op': 0,
	'imm_op': 0,
	'rd_op': 0,
	'd_op': 0,
	'imm': 0
}
instructions['jmp'] = {
	'pc_op': 1,
	'alu_op': 3,
	'rx_op': 6, #X
	'ry_op': 'a',
	'imm_op': 0,
	'rd_op': 0,
	'd_op': 'a',
	'imm': 0
}
instructions['jmpi'] = {
	'pc_op': 1,
	'alu_op': 3,
	'rx_op': 6, #X
	'ry_op': 6,
	'imm_op': 1,
	'rd_op': 0,
	'd_op': 7,
	'imm': 'a'
}
instructions['jz'] = {
	'pc_op': 3,
	'alu_op': 3,
	'rx_op': 'a',
	'ry_op': 6,
	'imm_op': 1,
	'rd_op': 0,
	'd_op': 7,
	'imm': 'b'
}
instructions['jnz'] = {
	'pc_op': 2,
	'alu_op': 3,
	'rx_op': 'a',
	'ry_op': 6,
	'imm_op': 1,
	'rd_op': 0,
	'd_op': 7,
	'imm': 'b'
}
instructions['add'] = {
	'pc_op': 0,
	'alu_op': 1,
	'rx_op': 'b',
	'ry_op': 'c',
	'imm_op': 0,
	'rd_op': 0,
	'd_op': 'a',
	'imm': 0
}
instructions['addi'] = {
	'pc_op': 0,
	'alu_op': 1,
	'rx_op': 'b',
	'ry_op': 6,
	'imm_op': 1,
	'rd_op': 0,
	'd_op': 'a',
	'imm': 'c'
}
instructions['and'] = {
	'pc_op': 0,
	'alu_op': 0,
	'rx_op': 'b',
	'ry_op': 'c',
	'imm_op': 0,
	'rd_op': 0,
	'd_op': 'a',
	'imm': 0
}
instructions['addi'] = {
	'pc_op': 0,
	'alu_op': 0,
	'rx_op': 'b',
	'ry_op': 6,
	'imm_op': 1,
	'rd_op': 0,
	'd_op': 'a',
	'imm': 'c'
}
instructions['load'] = {
	'pc_op': 0,
	'alu_op': 3,
	'rx_op': 6,
	'ry_op': 'b',
	'imm_op': 0,
	'rd_op': 1,
	'd_op': 'a',
	'imm': 0
}
instructions['loadi'] = {
	'pc_op': 0,
	'alu_op': 3,
	'rx_op': 6,
	'ry_op': 6,
	'imm_op': 1,
	'rd_op': 1,
	'd_op': 'a',
	'imm': 'b'
}
instructions['mov'] = {
	'pc_op': 0,
	'alu_op': 3,
	'rx_op': 6, #X
	'ry_op': 'b',
	'imm_op': 0,
	'rd_op': 0,
	'd_op': 'a',
	'imm': 0
}
instructions['movi'] = {
	'pc_op': 0,
	'alu_op': 3,
	'rx_op': 6, #X
	'ry_op': 6,
	'imm_op': 1,
	'rd_op': 0,
	'd_op': 'a',
	'imm': 'b'
}

with open('input.asm', 'r') as f:
	for l in f.readlines():
		print(parse_line(l[:-1]) + ' # ' + l[:-1])