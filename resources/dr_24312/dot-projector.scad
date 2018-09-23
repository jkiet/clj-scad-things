difference () {
  union () {
    minkowski () {
      rotate (a=45.0, v=[0, 0, 1]) {
        cube ([7, 7, 5], center=true);
      }
      cube ([30, 30, 10], center=true);
    }
  }
  cylinder (h=19, r=8, center=true);
  translate ([0, 0, 7]) {
    cube ([40, 32, 1], center=true);
  }
  translate ([-4, -6, 5.5]) {
    cube ([32, 20, 2], center=true);
  }
  translate ([17.5, 0, 3.5]) {
    cube ([5, 5, 6], center=true);
  }
  translate ([0, 0, 0.5]) {
    cylinder (h=14, r=16, center=true);
  }
  translate ([16.5, 11, ]) {
    cylinder (h=15, r=1.9, center=true);
  }
  translate ([16.5, 11, -5]) {
    cylinder (h=14, r=3, center=true);
  }
  translate ([19.7, 11, -5]) {
    cube ([6, 6, 14], center=true);
  }
  translate ([16.5, -11, ]) {
    cylinder (h=15, r=1.9, center=true);
  }
  translate ([16.5, -11, -5]) {
    cylinder (h=14, r=3, center=true);
  }
  translate ([19.7, -11, -5]) {
    cube ([6, 6, 14], center=true);
  }
  translate ([-17.5, 11, ]) {
    cylinder (h=15, r=1.9, center=true);
  }
  translate ([-17.5, 11, -5]) {
    cylinder (h=14, r=3, center=true);
  }
  translate ([-20.7, 11, -5]) {
    cube ([6, 6, 14], center=true);
  }
  rotate (a=29.999999999999996, v=[0, 0, 1]) {
    translate ([-20, -6, -4]) {
      cube ([15, 6, 4], center=true);
    }
  }
  rotate (a=29.999999999999996, v=[0, 0, 1]) {
    translate ([-20, -6, -4]) {
      cube ([6, 14, 2], center=true);
    }
  }
  rotate (a=29.999999999999996, v=[0, 0, 1]) {
    translate ([-20, -6, -4]) {
      cube ([6, 2, 10], center=true);
    }
  }
  rotate (a=29.999999999999996, v=[0, 0, 1]) {
    translate ([-20, -6, -4]) {
      rotate (a=90.0, v=[0, 1, 0]) {
        cylinder (h=5.5, r=3.2, center=true);
      }
    }
  }
  rotate (a=29.999999999999996, v=[0, 0, 1]) {
    translate ([-25.5, -6, ]) {
      cube ([6, 15, 15], center=true);
    }
  }
  translate ([-6, -16, -4]) {
    cube ([10, 10, 4], center=true);
  }
}
