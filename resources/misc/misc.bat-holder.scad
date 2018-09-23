difference () {
  cube ([40, 20, 10], center=true);
  translate ([0, 1.4, 2]) {
    cube ([40, 20, 10], center=true);
  }
  translate ([-15, -9, 1]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=2, r=1.8, center=true);
    }
  }
  translate ([-7.5, -9, 1]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=2, r=1.8, center=true);
    }
  }
  translate ([7.5, -9, 1]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=2, r=1.8, center=true);
    }
  }
  translate ([15, -9, 1]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=2, r=1.8, center=true);
    }
  }
  translate ([0, 4, 0]) {
    cube ([24, 20, 10], center=true);
  }
}
