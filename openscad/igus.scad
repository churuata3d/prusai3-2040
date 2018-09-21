// PRUSA iteration3 2040 Aluminum Profiles
// Igus Drylin
// GNU GPL v3
// Churuata 3D <churuata.3dprojects@gmail.com>
// https://www.instagram.com/churuata3d/

//igus drylin
//translate ([0,0,12]) rotate ([90,0,0]) import("RJ4JP_01_08_2.stl", convexity=3);
//translate ([0,0,46]) rotate ([90,0,0]) import("RJ4JP_01_08_2.stl", convexity=3);

f=50;

module igus(){
    difference()
        {
            union()
            {
                translate([0,0,19.7]) rotate([0,0,0]) cylinder(1,8,8, $fn=f);
                translate([0,0,3.3]) rotate([0,0,0]) cylinder(1,8,8, $fn=f);
            }

            translate([0,0,2]) rotate([0,0,0]) cylinder(20,7.2,7.2, $fn=f);
            
    //biseles
            
            //inferior
            translate([0,0,2]) rotate([0,0,0]) cylinder(2,8,6.9, $fn=f);
            translate([0,0,5.6]) rotate([0,180,0]) cylinder(2,8,6.9, $fn=f);
            //superior
            translate([0,0,18.4]) rotate([0,0,0]) cylinder(2,8,6.9, $fn=f);
            translate([0,0,22]) rotate([0,180,0]) cylinder(2,8,6.9, $fn=f);
   
            translate([-0.18,-0.5,0]) rotate([0,0,-40]) cube([12,1,24]);
            translate([-0.2,-5.4,0]) rotate([0,0,0]) cube([6,1,24]);
            translate([5.37,-5.3,0]) rotate([0,0,5]) cube([1,6,24]);

        }


    }