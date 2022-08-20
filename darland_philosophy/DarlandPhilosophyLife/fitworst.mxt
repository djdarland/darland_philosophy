

limit1 := 17;
val1 := 359333.0;

limit2 := 18;
val2 := 2350930.0;

solve({val1 = a * c^(2.0 * (limit1)),val2 = a * c^(2.0 * (limit2))}, {a,c});


quit
   
