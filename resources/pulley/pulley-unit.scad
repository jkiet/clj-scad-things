difference () {
  cube ([64, 192, 48], center=true);
  translate ([0, 0, 2]) {
    cube ([56, 192, 44], center=true);
  }
  translate ([0, 83.5, 0]) {
    cube ([50, 33, 48], center=true);
  }
  translate ([0, -83.5, 0]) {
    cube ([50, 33, 48], center=true);
  }
  translate ([-4, 0, 16]) {
    cube ([64, 192, 48], center=true);
  }
  translate ([-30, 83.5, -9.5]) {
    cube ([4, 15, 6], center=true);
  }
  translate ([-30, -83.5, -9.5]) {
    cube ([4, 15, 6], center=true);
  }
  translate ([0, 50, -22]) {
    cylinder (h=4, r=4.5, center=true);
  }
  translate ([0, -50, -22]) {
    cylinder (h=4, r=4.5, center=true);
  }
  translate ([30, -83.5, 16]) {
    difference () {
      cylinder (h=16.2, r=100, center=true);
      cylinder (h=16.2, r=4.5, center=true);
    }
  }
  translate ([30, 83.5, 16]) {
    difference () {
      cylinder (h=16.2, r=100, center=true);
      cylinder (h=16.2, r=4.5, center=true);
    }
  }
  translate ([30, 96, 0]) {
    cube ([10, 10, 48], center=true);
  }
  translate ([30, -96, 0]) {
    cube ([10, 10, 48], center=true);
  }
  translate ([30, 0, 24]) {
    cube ([10, 150, 48], center=true);
  }
  translate ([30, -83.5, 20]) {
    rotate (a=90.0, v=[0, 1, 0]) {
      cylinder (h=4, r=1.5, center=true);
    }
  }
  translate ([30, 83.5, 20]) {
    rotate (a=90.0, v=[0, 1, 0]) {
      cylinder (h=4, r=1.5, center=true);
    }
  }
}
