$fn=200;
//rotate([90,0,0]) {
difference () {
    hull () { /* La facade complete */
        translate([0,0,0]) cylinder(r=5,h=28);
        translate([145,0,0]) cylinder(r=5,h=28);
        translate([0,60,0]) cylinder(r=5,h=28);
        translate([145,60,0]) cylinder(r=5,h=28);
    } /* la fente */
    translate([3.5,12,27])
        cube([138,2.5,2]);
    difference () {
        hull () { /* on enlève l'intérieur */
            translate([3,3,-3]) cylinder(r=5,h=28);
            translate([142,3,-3]) cylinder(r=5,h=28);
            translate([3,57,-3]) cylinder(r=5,h=28);
            translate([142,57,-3]) cylinder(r=5,h=28);
        }   /* Petit carré pour supporter la led*/
        translate([125,11,28-6-2]) 
            cube([8,4.5,6]);
    }
    difference () { /* on créé le chanfrain */
       hull () { /* on créé un autre plus grand */
            translate([-1,-1,-1]) cylinder(r=5,h=11);
            translate([147,-1,-1]) cylinder(r=5,h=11);
            translate([-1,62,-1]) cylinder(r=5,h=11);
            translate([147,62,-1]) cylinder(r=5,h=11);
       }

       hull () { /* et un plus petit */
            translate([1.7,1.7,-2]) cylinder(r=5,h=13);
            translate([143.3,1.7,-2]) cylinder(r=5,h=13);
            translate([1.7,58.3,-2]) cylinder(r=5,h=13);
            translate([143.3,58.3,-2]) cylinder(r=5,h=13);
        }
    }
    translate([126,12,19]) /* Le trou pour la led */
        cube([6,2.5,9]);
    /* Les 4 trous pour le lock de la facade */
    translate([24.8,-5,2.8])
        cube([6.4,6,4.4]);
    translate([119.8-6,-5,2.8])
        cube([6.4,6,4.4]);
    translate([24.8,59,2.8])
        cube([6.4,6,4.4]);
    translate([119.8-6,59,2.8])
        cube([6.4,6,4.4]);
    // Et la place du logo
    /*translate([3,45,27])
        cube([12,12,2]);*/
    hull () { // Et la place du logo
            translate([3.5,45.5,27]) cylinder(r=0.5,h=2);
            translate([14.5,45.5,27]) cylinder(r=0.5,h=2);
            translate([14.5,56.5,27]) cylinder(r=0.5,h=2);
            translate([3.5,56.5,27]) cylinder(r=0.5,h=2);
    }
}

// Logo
/*hull () { 
    translate([4,46,26.5]) cylinder(r=0.5,h=1);
    translate([14,46,26.5]) cylinder(r=0.5,h=1);
    translate([14,56,26.5]) cylinder(r=0.5,h=1);
    translate([4,56,26.5]) cylinder(r=0.5,h=1);
}*/

difference() {
    union() {
        translate([6.5,47,27])
            rotate([0,0,30])
                cube([1,5,1]);
        translate([8.5,47,27])
            rotate([0,0,30])
                cube([1,5,1]);
        translate([6.5,47,27])
            rotate([0,0,-30])
                cube([1,9.5,1]);
        translate([8.5,47,27])
            rotate([0,0,-30])
                cube([1,9.5,1]);
    }
    translate([5,45,27])
        cube([5,2,2]);
    translate([3.7,51,27])
        cube([4,2,2]);
    translate([10.2,54.5,27])
        cube([4,2,2]);
}
//}