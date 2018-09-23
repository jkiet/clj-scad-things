intersection () {
  difference () {
    cube ([20, 45, 6], center=true);
    translate ([5, 16, 0]) {
      cube ([10, 14, 6], center=true);
    }
    translate ([5, -16, 0]) {
      cube ([10, 14, 6], center=true);
    }
    translate ([1.5, 0, 1]) {
      cube ([20, 14.5, 4], center=true);
    }
    translate ([-5, 16, 1]) {
      cube ([7, 14, 4], center=true);
    }
    translate ([-5, -16, 1]) {
      cube ([7, 14, 4], center=true);
    }
    translate ([-5, -12, 0]) {
      cylinder (h=6, r=1.8, center=true);
    }
    translate ([-5, -18, 0]) {
      cylinder (h=6, r=1.8, center=true);
    }
    translate ([-5, -15, 0]) {
      cube ([3.4, 6, 6], center=true);
    }
    translate ([-5, 12, 0]) {
      cylinder (h=6, r=1.8, center=true);
    }
    translate ([-5, 18, 0]) {
      cylinder (h=6, r=1.8, center=true);
    }
    translate ([-5, 15, 0]) {
      cube ([3.4, 6, 6], center=true);
    }
    translate ([-3, 0, 0]) {
      cylinder (h=6, r=1.8, center=true);
    }
    translate ([5, 0, 0]) {
      cylinder (h=6, r=1.8, center=true);
    }
    translate ([1, 0, 0]) {
      cube ([8, 3.2, 6], center=true);
    }
  }
  translate ([0, 0, -14]) {
    rotate (a=45.0, v=[1, 0, 0]) {
      cube ([20, 50, 50], center=true);
    }
  }
}
