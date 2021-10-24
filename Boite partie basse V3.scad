$fn=100;
difference () {
    union () {
        difference () {
            hull () { /* La boite complete */
                translate([0,0,0]) 
                    rotate ([0,90,0]) 
                        cylinder(r=5,h=184-20);
                translate([0,145,0])
                    rotate ([0,90,0]) 
                        cylinder(r=5,h=184-20);
                translate([0,0,60])
                    rotate ([0,90,0]) 
                        cylinder(r=5,h=184-20);
                translate([0,145,60])
                    rotate ([0,90,0]) 
                        cylinder(r=5,h=184-20);
            }
            translate([-1,-6,35.5]) // suppression partie sup
                cube([186,157,31]);
            hull () { // la boite plus petite pour creuser
                translate([-1,3,3]) 
                    rotate ([0,90,0]) 
                        cylinder(r=5,h=182-20);
                translate([-1,142,3])
                    rotate ([0,90,0]) 
                        cylinder(r=5,h=182-20);
                translate([-1,3,41])
                    rotate ([0,90,0]) 
                        cylinder(r=5,h=182-20);
                translate([-1,142,41])
                    rotate ([0,90,0]) 
                        cylinder(r=5,h=182-20);
            }
            hull () { /* chanfrein pour la face */
                // seulement 9 de profond pour laisser 1 mm
                translate([-1,1.5,1.5]) 
                    rotate ([0,90,0]) 
                        cylinder(r=5,h=10);
                translate([-1,143.5,1.5])
                    rotate ([0,90,0]) 
                        cylinder(r=5,h=10);
                translate([-1,1.5,40])
                    rotate ([0,90,0]) 
                        cylinder(r=5,h=10);
                translate([-1,143.5,40])
                    rotate ([0,90,0]) 
                        cylinder(r=5,h=10);
            }
            // on laisse 0.5mm en bas et en haut pour avoir 1mm
            translate([-1,-6,29.5]) // passage facade avec face sup
                cube([10,157,31]);
            // Passage du port
            translate([20,145,-5+4])
                cube([135,10,17]);
            // Passage des CF
            translate([184-20-4,30,11.5-9])
                cube([10,100,7]);
            // fixation des pieds
            translate([15,1,-5-2])
                cube([184-20-15,11,2+1.5]);
            translate([15,133,-5-2])
                cube([184-20-15,11,2+1.5]);
            
        }
        translate([20,15,-3])  // gros plots 1
            cylinder(r=6,h=33);
        translate([184-20-20,15,-3])  // gros plots 2
            cylinder(r=6,h=33);
        translate([20,130,-3])  // gros plots 3
            cylinder(r=6,h=33);
        translate([184-20-8+0.5,138.5,-3])  // gros plots 4
            cylinder(r=6,h=33);
    }
    translate([20,15,-6]) // gros plots 1 intérieur
        cylinder(r=4,h=32);
    translate([20,15,25])
        cylinder(r=1.5,h=6);
    translate([184-20-20,15,-6]) // gros plots 2 intérieur
        cylinder(r=4,h=32);
    translate([184-20-20,15,25])
        cylinder(r=1.5,h=6);
    translate([20,130,-6]) // gros plots 3 intérieur
        cylinder(r=4,h=32);
    translate([20,130,25])
        cylinder(r=1.5,h=6);
    translate([184-20-8+0.5,138.5,-6-34]) // gros plots 4 intérieur
        cylinder(r=4,h=32+34);
    translate([184-20-8+0.5,138.5,25])
        cylinder(r=1.5,h=6);

    // Puis les chanfreins des 3 cotés
    translate([-1,-5+1-4+0.7,34.5-5])
        cube([185,4,7]);
    translate([-1,145+5-1-0.7,34.5-5])
        cube([185,4,7]);
    translate([184-1-20-0.7,-5-1,34.5-5])
        cube([4,157,7]);

    // Grille dessous
    for(j=[0:14]) {
    translate([16,30+(j*6),-6])
        cube([13,1.5,5]);
    }
    // Place pour une étiquette dessous
    translate([(184-20)/2+4.5-35,72.5-25,-6])
        cube([70,50,2.5]);
}
// Ajout fixation facade
translate([2,25,-5])
    cube([4,6,4]);
translate([2,120-6,-5])
    cube([4,6,4]);

// Fixation carte 1/3
difference () {
    translate([35,155-5-2-17+4,-3]) 
        cylinder(r=3,h=9.5+3);
    translate([35,155-5-2-17+4,-2]) 
        cylinder(r=1,h=9+1+3);
}
translate([35+2,155-5-2-17+4,-2]) 
    polyhedron (points=[[0,-1,10],[0,1,10],[0,1,0], [0,-1,0],[5,-1,0],[5,1,0]],faces=[[0,3,2],[0,2,1],[3,0,4],[1,2,5],[0,5,4],[0,1,5],[5,2,4],[4,2,3],]);
translate([35,155-5-2-17-2+4,-2]) 
    rotate ([0,0,-90]) 
    polyhedron (points=[[0,-1,10],[0,1,10],[0,1,0], [0,-1,0],[5,-1,0],[5,1,0]],faces=[[0,3,2],[0,2,1],[3,0,4],[1,2,5],[0,5,4],[0,1,5],[5,2,4],[4,2,3],]);
translate([35-2,155-5-2-17+4,-2]) 
    rotate ([0,0,180]) 
    polyhedron (points=[[0,-1,10],[0,1,10],[0,1,0], [0,-1,0],[5,-1,0],[5,1,0]],faces=[[0,3,2],[0,2,1],[3,0,4],[1,2,5],[0,5,4],[0,1,5],[5,2,4],[4,2,3],]);
// Fixation carte 2/3
difference () {
    translate([35+74,155-5-2-17+(28-36)+4,-3]) 
        cylinder(r=3,h=9.5+3);
    translate([35+74,155-5-2-17+(28-36)+4,-2]) 
        cylinder(r=1,h=9+1+3);
}
translate([35+74+2,155-5-2-17+(28-36)+4,-2]) 
    polyhedron (points=[[0,-1,10],[0,1,10],[0,1,0], [0,-1,0],[5,-1,0],[5,1,0]],faces=[[0,3,2],[0,2,1],[3,0,4],[1,2,5],[0,5,4],[0,1,5],[5,2,4],[4,2,3],]);
translate([35+74,155-5-2-17+(28-36)+2+4,-2]) 
    rotate ([0,0,90]) 
    polyhedron (points=[[0,-1,10],[0,1,10],[0,1,0], [0,-1,0],[5,-1,0],[5,1,0]],faces=[[0,3,2],[0,2,1],[3,0,4],[1,2,5],[0,5,4],[0,1,5],[5,2,4],[4,2,3],]);
translate([35+74-2,155-5-2-17+(28-36)+4,-2]) 
    rotate ([0,0,180]) 
    polyhedron (points=[[0,-1,10],[0,1,10],[0,1,0], [0,-1,0],[5,-1,0],[5,1,0]],faces=[[0,3,2],[0,2,1],[3,0,4],[1,2,5],[0,5,4],[0,1,5],[5,2,4],[4,2,3],]);
// Fixation carte 3/3
difference () {
    translate([35+24+26,155-5-2-18+(28-129)+4,-3]) 
        cylinder(r=3,h=9.5+3);
    translate([35+24+26,155-5-2-18+(28-129)+4,-3]) 
        cylinder(r=1,h=9+1+3);
}
translate([35+24+26+2,155-5-2-18+(28-129)+4,-2]) 
    polyhedron (points=[[0,-1,10],[0,1,10],[0,1,0], [0,-1,0],[5,-1,0],[5,1,0]],faces=[[0,3,2],[0,2,1],[3,0,4],[1,2,5],[0,5,4],[0,1,5],[5,2,4],[4,2,3],]);
translate([35+24+26,155-5-2-18+(28-129)+2+4,-2]) 
    rotate ([0,0,90]) 
    polyhedron (points=[[0,-1,10],[0,1,10],[0,1,0], [0,-1,0],[5,-1,0],[5,1,0]],faces=[[0,3,2],[0,2,1],[3,0,4],[1,2,5],[0,5,4],[0,1,5],[5,2,4],[4,2,3],]);
translate([35+24+26,155-5-2-18+(28-129)-2+4,-2]) 
    rotate ([0,0,-90]) 
    polyhedron (points=[[0,-1,10],[0,1,10],[0,1,0], [0,-1,0],[5,-1,0],[5,1,0]],faces=[[0,3,2],[0,2,1],[3,0,4],[1,2,5],[0,5,4],[0,1,5],[5,2,4],[4,2,3],]);
