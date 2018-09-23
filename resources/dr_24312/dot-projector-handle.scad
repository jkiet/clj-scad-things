difference () {
  union () {
    minkowski () {
      rotate (a=45.0, v=[0, 0, 1]) {
        cube ([7, 7, 5], center=true);
      }
      cube ([30, 30, 5], center=true);
    }
  }
  translate ([11, 0, 1]) {
    cube ([18, 40, 8], center=true);
  }
  translate ([-11, 0, 1]) {
    cube ([18, 40, 8], center=true);
  }
  translate ([0, 0, -4]) {
    cylinder (h=2, r=6, center=true);
  }
  cube ([4, 10, 10], center=true);
  translate ([16.5, 11, ]) {
    cylinder (h=10, r=1.8, center=true);
  }
  translate ([16.5, -11, ]) {
    cylinder (h=10, r=1.8, center=true);
  }
  translate ([-17.5, 11, ]) {
    cylinder (h=10, r=1.8, center=true);
  }
  translate ([0, 15, 1]) {
    rotate (a=90.0, v=[0, 1, 0]) {
      cylinder (h=4, r=1.8, center=true);
    }
  }
  translate ([0, -15, 1]) {
    rotate (a=90.0, v=[0, 1, 0]) {
      cylinder (h=4, r=1.8, center=true);
    }
  }
  translate ([0, 8, 1]) {
    rotate (a=90.0, v=[0, 1, 0]) {
      cylinder (h=4, r=1.8, center=true);
    }
  }
  translate ([0, -8, 1]) {
    rotate (a=90.0, v=[0, 1, 0]) {
      cylinder (h=4, r=1.8, center=true);
    }
  }
}
