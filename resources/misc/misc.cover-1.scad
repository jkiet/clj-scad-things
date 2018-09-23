difference () {
  cube ([56, 30, 17], center=true);
  translate ([0, 0, 9]) {
    rotate (a=1.8749999999999998, v=[1, 0, 0]) {
      cube ([42, 31, 2], center=true);
    }
  }
  translate ([-29, 0, 0]) {
    rotate (a=29.999999999999996, v=[0, 1, 0]) {
      cube ([10, 30, 40], center=true);
    }
  }
  translate ([29, 0, 0]) {
    rotate (a=-29.999999999999996, v=[0, 1, 0]) {
      cube ([10, 30, 40], center=true);
    }
  }
  translate ([0, 0, -2]) {
    cube ([19.5, 30, 13], center=true);
  }
  translate ([0, 0, -6]) {
    cube ([22.8, 30, 6], center=true);
  }
  translate ([0, -7, -1]) {
    rotate (a=90.0, v=[0, 1, 0]) {
      cylinder (h=56, r=2.6, center=true);
    }
  }
  translate ([22, -7, -1]) {
    rotate (a=90.0, v=[0, 1, 0]) {
      cylinder (h=16, r=6, center=true);
    }
  }
  translate ([-22, -7, -1]) {
    rotate (a=90.0, v=[0, 1, 0]) {
      cylinder (h=16, r=6, center=true);
    }
  }
  translate ([0, 10, 0]) {
    cube ([19.5, 10, 17], center=true);
  }
  translate ([0, 12, 0]) {
    cube ([22.8, 6, 8], center=true);
  }
}
