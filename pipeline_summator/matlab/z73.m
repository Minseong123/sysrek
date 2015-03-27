input = fi(2 * rand(300, 1) -1, 1, 13, 4);
states = fi(zeros(256, 1), 1, 21, 4);
output = fi(zeros(size(input)), 1, 21, 4);

for i = 1:length(input)
   acc =fi(0, 1, 21, 4);
   states(1) = input(i);
   for j = 1:length(states)
       acc = accumpos(acc, states(j));
   end
   states(2:end) = states(1:end-1);
   output(i) = acc;
end

%% testowanie
in = fi(2 * rand(10, 1) - 1, 1, 13, 4);
acc = fi(0, 1, 21, 4);
states = fi(zeros(size(input)), 1, 21, 4);

for i = 1:length(in)
    input = in(i);
    acc = accumpos(acc, input);
    states(i) = acc;
    disp(['input = ' input.bin]);
    disp(['acc = ' acc.bin]);
end
