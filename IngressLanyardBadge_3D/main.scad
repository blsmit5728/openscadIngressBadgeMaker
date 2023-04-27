include <roundedcube.scad>

module TEXT_HOLDER(height)
{
    h = height;
    W = 76;
    RING_H = 3;
    difference(){
        roundedcube([W,h,RING_H], false, 2, "z");
        translate([2,2,2])roundedcube([W-4,h-4,RING_H+3], false, 2, "z");
    }
}
module CARD_BASE()
{
    cube([80,150,3]);
    color("white")translate([2,2,0])TEXT_HOLDER(40);
    color("white")translate([2,45,0])TEXT_HOLDER(40);
    
}
//color("black")
CARD_BASE();