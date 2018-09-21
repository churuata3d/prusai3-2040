// Parametric 1U Rack
// GNU GPL v3
// Churuata3D Průša <churuata.3dprojects@gmail.com>
// https://www.instagram.com/churuata3d/
// https://www.facebook.com/churuata3d

//Wood or Material thickness
thickness=18;
//printable wall thickness
wall=3;
$fn=12;

module rack(thickness,wall){
    
    //
    width=20;
    L=44.4;
    H=31.75;
    R=3;
    X=(44.4-31.75)/2;
    depth=10;

//final body
difference() {
        //main body
        union(){    
            cube([wall,thickness+2*wall,L-wall],0);
            translate ([0,thickness+wall,0]) rotate ([0,0,90]) cube([wall,thickness+wall,L-wall],0);
            translate ([0,0,0]) rotate ([0,0,90]) cube([wall,thickness+wall,L-wall],0);
            translate ([-(thickness+wall),0,L]) rotate ([0,90,0]) cube([wall,thickness+2*wall,thickness+2*wall],0);
            translate ([0,-(width),0]) rotate ([0,0,0]) cube([wall,width,L],0);
            translate ([0,thickness+wall,L]) rotate ([0,0,90]) cube([wall,thickness+wall,thickness],0);
            translate ([0,-width,L]) rotate ([0,0,0]) cube([wall,thickness+2*wall+width,thickness],0);
            translate ([-(thickness+wall),-width,L+thickness+wall]) rotate ([0,90,0]) cube([wall,thickness+2*wall+width,thickness+2*wall],0);
        }
        //holes boolean difference
        union(){
            translate ([-wall,-((width/2)+R),X]) rotate ([0,90,0]) cylinder(h=10, r=R);
            translate ([-wall,-((width/2)+R),X+H]) rotate ([0,90,0]) cylinder(h=10, r=R);
            translate ([-wall,-(width/2)+R,X]) rotate ([0,90,0]) cylinder(h=depth, r=R);
            translate ([-wall,-(width/2)+R,X+H]) rotate ([0,90,0]) cylinder(h=depth, r=R);
            translate ([-wall,-(width/2)-R,X+R]) rotate ([0,90,0]) cube([2*R,2*R,depth],0);
            translate ([-wall,-(width/2)-R,X+H+R]) rotate ([0,90,0]) cube([2*R,2*R,depth],0);
        }
        
        //translate ([depth/2,thickness+R,L]) rotate ([0,45,90]) cube([depth,H,depth/2],0);
    }
}

rack(thickness,wall);
//translate ([0,thickness*wall,0]) mirror([0,2,0]) rack(thickness,wall) ;