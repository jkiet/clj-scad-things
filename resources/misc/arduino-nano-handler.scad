difference () {
  union () {
    minkowski () {
      cube ([44, 18, 3], center=true);
      rotate (a=45.0, v=[0, 0, 1]) {
        cube ([3, 3, 3], center=true);
      }
    }
    translate ([16.5, -10.2, 6]) {
      cube ([8, 2, 12], center=true);
    }
    translate ([-16.5, -10.2, 6]) {
      cube ([8, 2, 12], center=true);
    }
  }
  minkowski () {
    cube ([40, 14, 3], center=true);
    rotate (a=45.0, v=[0, 0, 1]) {
      cube ([3, 3, 3], center=true);
    }
  }
  cube ([44, 18, 2], center=true);
  translate ([-23, 0, 2]) {
    cube ([3, 8, 2], center=true);
  }
  translate ([-16.5, -10.2, 8]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=2, r=1.8, center=true);
    }
  }
  translate ([16.5, -10.2, 8]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=2, r=1.8, center=true);
    }
  }
  translate ([0, -10, ]) {
    cube ([25, 5, 6], center=true);
  }
}
