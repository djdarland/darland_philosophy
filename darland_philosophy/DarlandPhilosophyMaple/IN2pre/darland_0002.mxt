with(LinearAlgebra):
Digits := 12;

###############################################
init := proc()
global particle1, particle2, particle3, world, G, c, e0;
    c := 3E8;
    e0 := 8.85e-12;
    G := 6.67e-11;
    particle1 := table():
    particle2 := table():
    particle3 := table():
    
    particle1[name] := "particle1":
    particle1[mass] := 1.3:
    particle1[charge] := 3.3:
    particle1[location] := <1.0,2.0,3.0>:
    particle1[retarded_location] := <1.0,2.0,3.0>:
    particle1[velocity] := <1.0,2.0,3.0>:
    particle1[acceleration] := <1.0,1.0,0.0>:
    particle1[name] := "particle1":
    particle1[elec_f_E] := <3.0,1.0,8.0>:
    particle1[mag_f_B] := <1.0,6.0,2.0>:

    
    particle2[name] := "particle2":
    particle2[mass] := 2.3:
    particle2[charge] := 4.3:
    particle2[location] := <8.0,1.0,2.0>:
    particle2[retarded_location] := <1.0,2.0,3.0>:
    particle2[velocity] := <7.0,-3.0,0.0>:
    particle2[acceleration] := <1.0,1.0,0.0>:
    particle2[elec_f_E] := <-5.0,3.0,-2.0>:
    particle2[mag_f_B] := <8.0,-2.0,-1.0>:
    
    particle3[name] := "particle3":
    particle3[mass] := 4.1:
    particle3[charge] := -2.3:
    particle3[location] := <-8.0,-1.0,2.0>:
    particle3[retarded_location] := <1.0,2.0,3.0>:
    particle3[velocity] := <5.0,3.0,0.0>:
    particle3[acceleration] := <1.0,1.0,0.0>:
    particle3[elec_f_E] := <-1.0,-2.0,8.0>:
    particle3[mag_f_B] := <4.0,-1.0,6.0>:
    
    world := {particle1, particle2, particle3}:

end;

###################################################

external_world := proc(w, p) w minus {p};
end;

ewp1 := external_world(world, particle1);
ewp2 := external_world(world, particle2);
ewp3 := external_world(world, particle3);

####################################################
# field (Vector) of gravity caused by p2 at p1
gravity := proc(p2, p1)
global G;
    G * p2[mass] * (p2[location] - p1[location]) / DotProduct(p2[location], p1[location]);
end:
######################################################
# Add to Set of gravity Vectors at p1
union_to_physical_feeling_grav := proc(p)
    local p2;
    p[physical_feeling_grav] := {};
    for p2 in external_world(world, p) do
        p[physical_feeling_grav] := p[physical_feeling_grav] union {gravity(p2, p)};
    od;
    return 0;
end:
################################################
# Add to Sum of gravity Vectors at p1
sum_to_body_grav := proc(p)
    local p2;
    p[body_grav] := <0.0, 0.0, 0.0>;
    for p2 in external_world(world, p) do
        p[body_grav] := p[body_grav] + gravity(p2, p);
    od;
    return 0;
end:
###################################################
# compute p retarded location
calc_retarded_loc := proc(p1, p2, wrld_time, retarded_time) 
    p1[location] - p2[location] ; # approximation
end;
####################################################
# electric field (Vector) caused by p2 at p1
elec_E := proc(p2, p1)
global c; # speed of light
global e0;
local u, dp_rp_u, dp3,
    rr, urr, coef, partA, partB, together;
    p1[retarded_location] := calc_retarded_loc(p1, p2, world_time, p1[last_time]);
    # length of retarded location
    rr := sqrt(DotProduct(p1[retarded_location],
                        p1[retarded_location]));
#    print("elec rr = ", rr);
    urr := p1[retarded_location] / rr; # unit vector
              
#    print("elec urr = ", urr);
    u := (c * urr) - p2[velocity]; # approximaion
#    print("elec u = ", u);
    
    dp_rp_u := DotProduct(p1[retarded_location], u);
#    print("elec dp_rp_u = ", dp_rp_u);
    dp3 := dp_rp_u * dp_rp_u * dp_rp_u;
#    print("elec dp3 = ", dp3);

    coef := (p2[charge] * rr / (4.0 * Pi * e0 * dp3));
#    print("elec coef = ", coef);
    
    partA := coef * 
    ((c * c) - DotProduct(p2[velocity],
                          p2[velocity])) * u; 
    partB := coef * CrossProduct(
        p1[retarded_location],
        CrossProduct(u,
                     p2[acceleration]));
#    print("elec partB = ", partB);
    together := partA + partB;
#    print("elec together = ", together);
return together;
end;
######################################################
# Add to Set of electric Vectors at p1
union_to_physical_feeling_elec := proc(p)
    local p2;
    p[physical_feeling_elec] := {};
    for p2 in external_world(world, p) do
        p[physical_feeling_elec] := p[physical_feeling_elec] union {elec_E(p2, p)};
    od;
    return 0;
end:
################################################
# Add to Sum of elec Vectors at p1
sum_to_body_elec := proc(p)
    local p2;
    p[body_elec] := <0.0, 0.0, 0.0>;
    for p2 in external_world(world, p) do
        p[body_elec] := p[body_elec] + elec_E(p2, p);
    od;
    return 0;
end:
###################################################
#################################################
# magnetic field (Vector) caused by p2 at p1
mag_B := proc(p2, p1)
global c; # speed of light
    local rsq, runit;
    p1[retarded_location] := calc_retarded_loc(p1,
                                              p2,
                                              world_time,
                                              p2[last_time]);
    return (1.0/c * (CrossProduct(p1[retarded_location],
                          elec_E(p2, p1))));
end;
######################################################
# Add to Set of mag Vectors at p1
union_to_physical_feeling_mag := proc(p)
    local p2;
    p[physical_feeling_mag] := {};
    for p2 in external_world(world, p) do
        p[physical_feeling_mag] := p[physical_feeling_mag] union {mag_B(p2, p)};
    od;
    return 0;
end:
################################################
# Add to Sum of mag Vectors at p1
sum_to_body_mag := proc(p)
    local p2;
    p[body_mag] := <0.0, 0.0, 0.0>;
    for p2 in external_world(world, p) do
        p[body_mag] := p[body_mag] + mag_B(p2, p);
#        print("HHHHRRR", p[body_mag]);
    od;
    return 0;
end:
###################################################
####################################################
jump := proc(delta_time)
global particle1, particle2, particle3, world;
local out, out2, out3, out4, out5, out6, particle;
    for particle in world do
        particle[acceleration] := particle[body_grav]
        / particle[mass];
        particle[acceleration] := particle[acceleration]
        + particle[charge] * particle[body_elec]
        / particle[mass];
#        print("body_mag HERE === ", particle[body_mag]);
        particle[acceleration] := particle[acceleration]
        + particle[charge] * CrossProduct(
            particle[velocity], particle[body_mag])
        / particle[mass];
        
        particle[location] := particle[location]
        + particle[velocity] * delta_time;
        particle[velocity] := particle[velocity]
        + particle[acceleration] * delta_time;
        out := map(union_to_physical_feeling_grav, world):
        out2 := map(sum_to_body_grav, world):
        out3 := map(union_to_physical_feeling_elec, world):
        out4 := map(sum_to_body_elec, world):
        out5 := map(union_to_physical_feeling_mag, world):
        out6 := map(sum_to_body_mag, world):
    od;
end;

run := proc(start_time, end_time, delta_time)
global particle1, particle2, particle3, world;
local world_time, out, out2, out3, out4, out5, out6;
    world_time := start_time;
    init();
    out := map(union_to_physical_feeling_grav, world):
    out2 := map(sum_to_body_grav, world):
    out3 := map(union_to_physical_feeling_elec, world):
    out4 := map(sum_to_body_elec, world):
    out5 := map(union_to_physical_feeling_mag, world):
    out6 := map(sum_to_body_mag, world):
    while world_time <= end_time do
        print("world_time = ", world_time);
        map(print, evalf(world));
        jump(delta_time);
        world_time := world_time + delta_time;
    od;
end;

run(0.0, 0.4, 0.1);


quit;

