//wood size 18*200*xxx milimeters
woodHeight=18;
lenght=200;
height=lenght;

//shelf in mm
thickness=5;
width=15;
triangle=lenght-(lenght*30/100);

difference(){
    
    //horizontal
    union(){
        
       cube([width,lenght,height]);
       translate([0,0,height]) cube([width,lenght,woodHeight+2*thickness]);
            
    }
    //difference 45º
    translate([-width/2,0,0]) rotate([-45,0,0]) cube([width*2,lenght+2*thickness,height*thickness]);
    //difference cube down
    translate([-width/2,-width/2,0]) cube([width*2,woodHeight+4*thickness,woodHeight+2*thickness]);
    //slot wood
    translate([-width/2,thickness,height+thickness]) cube([width*2,lenght-2*thickness,woodHeight]);
    //triangulo interno
    translate([0,-width,width+thickness])
    difference(){
    translate ([-width/12,woodHeight*2,woodHeight*2]) cube([width+2,lenght-((lenght*40)/100),height-((height*40)/100)]);
    translate([-width/2,-woodHeight,-woodHeight]) rotate([-45,0,0]) cube([width*2,lenght+2*thickness,height*thickness]);
}
    
//rotate ([0,0,90])
//translate([woodHeight+2*thickness,width/2,50])
//polyhedron
//    (points = [
//	       [-thickness, -width*2, triangle], [0-thickness, 0, triangle], [-thickness, 0, 0], [-thickness, -width*2, 0], [140-thickness, -width*2, triangle], [140-thickness, 0, triangle]	       
//	       ], 
//     faces = [
//		  [0,3,2],  [0,2,1],  [4,0,5],  [5,0,1],  [5,2,4],  [4,2,3], [1,2,5], [0,3,4]     
//		  ]
//     );

}  

