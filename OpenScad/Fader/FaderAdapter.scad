// https://fhnw.mit-license.org/

$fn = 36;


module round_cube(v, r) {
    hull() {
        translate([r, r, 0]) cylinder(v[2], r, r);
        translate([v[0] - r, r, 0]) cylinder(v[2], r, r);
        translate([v[0] - r, v[1] - r, 0]) cylinder(v[2], r, r);
        translate([r, v[1] - r, 0]) cylinder(v[2], r, r);
    }
}

module fader() {
    round_cube([64, 24, 10], 2);
}

module base() {
    round_cube([76, 76, 3], 4);
}

module slice() {
    difference() {
        base();
        translate([76 / 2, 76 / 2, -1]) cylinder(5, 6, 6);
        translate([-1, (76 - 12) / 2, -1]) cube([2 + 2, 12, 3 + 2]);
    }    
}

module slice2() {
    difference() {
        base();
        translate([(76 - 64) / 2, (76 - 24) / 2, -1]) fader();
        translate([-1, (76 - 12) / 2, -1]) cube([2 + 2, 12, 3 + 2]);
    }    
}

module slice3() {
    difference() {
        base();
        translate([(76 - 64) / 2, (76 - 24) / 2, -1]) fader();
        translate([-1, (76 - 12) / 2, -1]) cube([6 + 2, 12, 3 + 2]);
    }    
}

module layout() {
    projection() {
        translate([0, 0, 0]) slice3();
        translate([76 + 2, 0, 0]) slice3();
        translate([76 + 2, 76 + 2, 0]) slice2();
        translate([0, 76 + 2, 0]) slice();
    }
}

module print() {
    translate([0, 0, -3]) union() {
        translate([0, 0, 9]) slice3();
        translate([0, 0, 6]) slice3();
        translate([0, 0, 3]) slice2();
        //translate([0, 0, 0]) slice();
    }
}

module assembly(gap) {
    color("white") translate([0, 0, 9 + 3 * gap]) slice3();
    translate([0, 0, 6 + 2 * gap]) slice3();
    color("white") translate([0, 0, 3 + gap]) slice2();
    translate([0, 0, 0]) slice();
    fdz = (gap > 0) ? 12 : 3;
    color("red") translate([(76 - 64) / 2, (76 - 24) / 2, fdz + 4 * gap]) fader();
}

//layout();
print();
//assembly(6);
