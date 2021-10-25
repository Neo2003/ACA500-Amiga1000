$fn=100;

difference () { // Second Pied
    translate([15,133,-5-34])
        cube([184-20-15,11,34+1.5]);//+1 for insersion
 
    translate([14,133,-5-35])
        rotate([1.4,0,0]) 
            cube([184-20-15+2,1,35]);

    
    translate([14,11+132,-5-35])
        rotate([-1.4,0,0]) 
            cube([184-20-15+2,1,35]);
        // Place des tampons sous les pieds
    translate([15+20,133+5.5-3,-5-34-1])
        cube([15,6,2.5]);
    translate([15+184-20-15-20-15,133+5.5-3,-5-34-1])
        cube([15,6,2.5]);
    // Trou pour la vis décalée
    translate([184-20-8+0.5,138.5,-6-34]) // gros plots 4 intérieur
        cylinder(r=4,h=33+34);
}

