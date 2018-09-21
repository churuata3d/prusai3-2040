// PRUSA iteration4
// Y motor holder
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module holder()
{
    
//2020 mount
    //#translate([-5.5,-3.5,10]) cube([5,2,14]);
    translate([6,-9,36.25]) rotate([45,0,0]) cube([10,1.5,1.5]);
    translate([6,-9,33.5]) rotate([45,0,0]) cube([10,1.5,1.5]);
    translate([6,-14,33.5]) rotate([45,0,0]) cube([10,1.5,1.5]);
   
    difference(){
        translate([-10,-1.5,-3]) cube([20,7,40]);
        // lower frame screw    
        translate([-3,12,7]) rotate([90,0,0]) cylinder( h=40, r=2.5, $fn=50 ); 
        translate([-3,7,7]) rotate([90,0,0]) cylinder( h=5, r=5.4, $fn=50 ); 
        
        // upper frame screw    
        translate([-3,12,27]) rotate([90,0,0]) cylinder( h=40, r=2.5, $fn=50 );        
        translate([-3,7,27]) rotate([90,0,0]) cylinder( h=5, r=5.4, $fn=50 );
        
        //biseles
        translate([-12,-16,29]) rotate([45,0,90]) cube([60,15,15]);
        translate([-12,-16,-16]) rotate([45,0,90]) cube([60,15,15]);
    }

    difference(){    
        translate([6,-14,37]) cube([10,12.5,10]);
        translate([-10,-16,42]) rotate([45,0,0]) cube([60,10,10]);
    }
        translate([6,-14,35]) cube([10,5,2]);
    difference(){      
        translate([6,-16,32]) cube([10,9,3]);
        //translate([6,-13.5,35]) cube([10,5,2]);        
        translate([5,-8,30.9]) rotate([45,0,0]) cube([12,3,1.5]);
        translate([5,-17.1,33]) rotate([-45,0,0]) cube([12,3,1.5]);
    }
    difference()
    {
        // base body
        translate([6,-1.5,-3]) cube([10,42,50]);

        // shape cuts
        translate([-17,19.5,26]) rotate([0,90,0]) cylinder( h=35, r=11.5, $fn=50 );   
        translate([-8,20,15]) cube([26,23,64]);
        translate([-20,5.5,-4]) cube([26,41,64]);
        translate([-20,-5,37]) cube([26,21,20]);
        translate([-20,-1,37]) cube([26,30,20]);
        
        // lower motor screw
        translate([-20,35 ,10.5]) rotate([0,90,0]) cylinder( h=40, r=1.65, $fn=50 ); 
        translate([-7,35,10.5]) rotate([0,90,0]) cylinder( h=15, r=3.1, $fn=50 );         
        
        // upper motor screw    
        translate([-20,4,41.5]) rotate([0,90,0]) cylinder( h=40, r=1.65, $fn=50 ); 
        translate([4,4,41.5]) rotate([0,90,0]) cylinder( h=4, r=3.1, $fn=50 );         

        // corners
        translate([-10,20,42]) rotate([45,0,0]) cube([60,10,10]);                
        translate([-10,36,-10]) rotate([45,0,0]) cube([60,30,10]);        
        translate([-10,43,10]) rotate([45,0,0]) cube([60,20,20]);  
        //translate([-14,-10,-2]) rotate([0,45,0]) cube([10,50,10]);        
        //translate([-14,-10,37]) rotate([0,45,0]) cube([10,50,10]);        
        //translate([18,-10,-5]) rotate([0,0,45]) cube([10,10,60]);        
    }
    
    // reinforcement
    translate([7.8,1.9,-3]) rotate([0,0,55]) cube([5,5,21]);

    difference()
        {
            translate([7.8,1.9,13.6]) rotate([0,0,55]) cube([5,5,23.4]);
            translate([-20,19.5,26]) rotate([0,90,0]) cylinder( h=35, r=12, $fn=30 );   
        }
        
     //endstop
        //body
     rotate([90,0,90,]){
         translate([4+6,8+29.5,-22]) cube([12-2, 5, 28]);    
         translate([4,(8-5)+29.5,-22]) cube([8, 10, 28]);   
         translate([4+9.5-2,7+29.5,-22]) rotate([0,0,45]) cube([2, 2, 28]);
     }
        
     //cutout
     translate([-1,41,10])  cube([15, 5, 19]);
     translate([24.5-2,32,17]) rotate([0,45,0]) cube([2, 20, 2]);
     translate([23-2,32,29]) rotate([0,45,0]) cube([5, 20, 5]);

}
 
module endstop_holes(){
    translate([18,45,15]) rotate([90,0,0]) cylinder(h = 10, r=0.8, $fn=20);
    translate([18,42.2,15]) rotate([90,0,0]) cylinder(h = 2, r1=1.2, r2=0.8, $fn=20);
 
    translate([18,45,24.5]) rotate([90,0,0]) cylinder(h = 10, r=0.8, $fn=20);
    translate([18,42.2,24.5]) rotate([90,0,0]) cylinder(h = 2, r1=1.2, r2=0.8, $fn=20);
     
   }

module y_motor_holder()
{
    rotate([0,90,0])
    difference()
        {
        holder();
       
        // selective infill
        translate([-0,1,33]) cube([12,0.5,2]);        
        translate([-3,1,2]) cube([15,0.5,1]);        
        translate([-5,1.5,13]) cube([17,0.5,8]);        
        
        //version
        translate([-1,-1,15]) rotate([90,0,0]) linear_extrude(height = 0.6) 
        { text("R2",font = "helvetica:style=Bold", size=5, center=true); }
        }
        
        //endstop holes
        endstop_holes();
        
}    
    
y_motor_holder();    

    