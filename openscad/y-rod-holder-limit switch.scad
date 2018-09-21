// PRUSA iteration4
// Y holder front
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module ziptie_round_edge()
{
    difference()
    {
        translate([0,0,0]) rotate([90,0,0]) cylinder( h=3.2, r=4, $fn=50 );  
        translate([0,1,0]) rotate([90,0,0]) cylinder( h=5, r=2, $fn=50 );  
        translate([-10,-4,0]) cube([20,5,5]);
        translate([-20,-4,-13]) cube([20,5,20]);
    }
}


module part()    
{

    difference()
    {
        union()
        {
            // body block
            translate([-25,0,0]) cube([50,20,12]); 
            translate([-12.5,7.5,-5]) cube([25,5,5]);
        }

        // y-axis cut
        translate([0,21,10.5]) rotate([90,0,0]) cylinder( h=21, r=4, $fn=50 );
        
        translate([0,21,10.5]) rotate([90,0,0]) cylinder( h=2, r1=4.5, r2=4, $fn=50 );
        
        translate([0,1,10.5]) rotate([90,0,0]) cylinder( h=2, r1=4, r2=4.5, $fn=50 );
        translate([-7,-1,14.5]) rotate([0,45,0]) cube([10,22,10]);
        
        translate([0,21,10.5]) rotate([90,0,0]) cylinder( h=1.4, r1=5, r2=4, $fn=50 );

        // screw holes
          translate([-18.5,10,-6]) cylinder( h=21, r=2.5, $fn=60 );
          translate([-25.38,-1,5.275]) cube([13,22,10]);
          translate([18.5,10,-6]) cylinder( h=20, r=2.5, $fn=60 );
          translate([12.5,-1,5.275]) cube([13,22,10]);

        // ziptie
        translate([7.8,8.4,9]) ziptie_round_edge();
        translate([-7.8,5.2,9]) rotate([0,0,180]) ziptie_round_edge();
        translate([-8.1,5.2,5]) cube([16.2,3.2,2]);
        translate([0.8,5.2,24.5]) rotate([0,60,0]) cube([20,3.2,2]);
        translate([-1.8,5.2,26.5]) rotate([0,120,0]) cube([20,3.2,2]);
        
        // nut print supports
        translate([-8.2,1.8,3.5-3.2/2]) cube([5.6,2.1,3.2]);
        translate([2.8,1.8,3.5-3.2/2]) cube([5.6,2.1,3.2]);
        translate([-7.1,2.1,3.5-3.2/2]) cube([3.2,2.1,3.2]);
        translate([3.9,2.1,3.5-3.2/2]) cube([3.2,2.1,3.2]);


        // upper corners
        translate([4,-1,20]) rotate([0,60,0]) cube([17,30,20]);
        translate([-21.2,-1,30]) rotate([0,120,0]) cube([17,30,20]);

    }
}


rotate([90,0,0])part();


