

a := 0.000000004873859355; 
c := 2.557827766;

lim := 1;
while lim < 19 do 
val := a * (c^(2 *lim));
write("lim = ", lim, " val = ", val);
lim := lim + 1;
od; 

