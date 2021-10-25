$fn=100;

//translate([0,-50,0]) // pour avoir plus de place pour l'impression
    difference () { // Premier pied
        translate([15,1,-5-34])
            cube([184-20-15,11,34+1.5]); //+1 for insersion

        translate([14,1,-5-35])
            rotate([1.4,0,0]) 
                cube([184-20-15+2,1,35]);
        // Place des tampons sous les pieds
        translate([14,11,-5-35])
            rotate([-1.4,0,0]) 
                cube([184-20-15+2,1,35]);
        translate([15+20,1+5.5-3,-5-34-1])
            cube([15,6,2.5]);
        translate([15+184-20-15-20-15,1+5.5-3,-5-34-1])
            cube([15,6,2.5]);
    };

