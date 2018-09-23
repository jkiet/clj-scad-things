difference () {
  union () {
    cylinder (h=2, r=23, center=true);
    rotate (a=-29.999999999999996, v=[0, 0, 1]) {
      translate ([24, 0, 4]) {
        cube ([18, 2, 10], center=true);
      }
    }
    rotate (a=-29.999999999999996, v=[0, 0, 1]) {
      translate ([18, 0, 0]) {
        intersection () {
          rotate (a=45.0, v=[1, 0, 0]) {
            cube ([2, 12, 12], center=true);
          }
          translate ([0, 0, 15]) {
            cube ([2, 30, 30], center=true);
          }
        }
      }
    }
  }
  cylinder (h=2, r=15, center=true);
  translate ([-16.5, 11, ]) {
    cylinder (h=2, r=1.8, center=true);
  }
  translate ([-16.5, -11, ]) {
    cylinder (h=2, r=1.8, center=true);
  }
  translate ([17.5, 11, ]) {
    cylinder (h=2, r=1.8, center=true);
  }
  rotate (a=-29.999999999999996, v=[0, 0, 1]) {
    translate ([28, 0, 4]) {
      rotate (a=90.0, v=[1, 0, 0]) {
        cylinder (h=3, r=2.2, center=true);
      }
    }
  }
}
