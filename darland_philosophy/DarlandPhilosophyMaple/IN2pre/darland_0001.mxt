with(LinearAlgebra):
Digits := 12;

init := proc()
global particle1, particle2, particle3, world;
    particle1 := table():
    particle2 := table():
    particle3 := table():
    
    particle1[name] := "particle1":
    particle1[mass] := 1.3:
    particle1[charge] := 3.3:
    particle1[location] := <1.0,2.0,3.0>:
    particle1[velocity] := <1.0,2.0,3.0>:
    particle1[name] := "particle1":
    
    particle2[name] := "particle2":
    particle2[mass] := 2.3:
    particle2[charge] := 4.3:
    particle2[location] := <8.0,1.0,2.0>:
    particle2[velocity] := <7.0,-3.0,0.0>:
    
    particle3[name] := "particle3":
    particle3[mass] := 4.1:
    particle3[charge] := -2.3:
    particle3[location] := <-8.0,-1.0,2.0>:
    particle3[velocity] := <5.0,3.0,0.0>:
    
    world := {particle1, particle2, particle3}:

end;

external_world := proc(w, p) w minus {p};
end;

ewp1 := external_world(world, particle1);
ewp2 := external_world(world, particle2);
ewp3 := external_world(world, particle3);

# field (Vector) of gravity caused by p2 at p1
gravity := proc(p2, p1)
local G;
    G := 6.67E-3; # changed to have greater effect
    G * p2[mass] * (p2[location] - p1[location]) / DotProduct(p2[location], p1[location]);
end:

# Add to Set of gravity Vectors at p1
union_to_physical_feeling_grav := proc(p)
    local p2;
    p[physical_feeling_grav] := {};
    for p2 in external_world(world, p) do
        p[physical_feeling_grav] := p[physical_feeling_grav] union {gravity(p2, p)};
    od;
    return 0;
end:

# Add to Sum of gravity Vectors at p1
sum_to_body_grav := proc(p)
    local p2;
    p[body_grav] := <0.0, 0.0, 0.0>;
    for p2 in external_world(world, p) do
        p[body_grav] := p[body_grav] + gravity(p2, p);
    od;
    return 0;
end:


# out := map(union_to_physical_feeling_grav, world):
# out2 := map(sum_to_body_grav, world):


jump := proc(delta_time)
global particle1, particle2, particle3, world;
local out, out2, particle;
    for particle in world do
        particle[acceleration] := particle[body_grav]
        / particle[mass];
        particle[location] := particle[location]
        + particle[velocity] * delta_time;
        particle[velocity] := particle[velocity]
        + particle[acceleration] * delta_time;
        out := map(union_to_physical_feeling_grav, world):
        out2 := map(sum_to_body_grav, world):
    od;
end;

run := proc(start_time, end_time, delta_time)
global particle1, particle2, particle3, world;
local world_time, out, out2;
    world_time := start_time;
    init();
    out := map(union_to_physical_feeling_grav, world):
    out2 := map(sum_to_body_grav, world):
    while world_time <= end_time do
        print("world_time = ", world_time);
        map(print, evalf(world));
        jump(delta_time);
        world_time := world_time + delta_time;
    od;
end;

run(0.0, 0.4, 0.1);


quit;

