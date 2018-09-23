union () {
  difference () {
    cube ([40, 20, 16], center=true);
    translate ([0, 0, 5]) {
      difference () {
        cube ([40, 20, 6], center=true);
        cube ([20, 9.6, 6], center=true);
      }
    }
    translate ([14.2, 0, 5]) {
      rotate (a=90.0, v=[0, 1, 0]) {
        cylinder (h=8.2, r=4.6, center=true);
      }
    }
    cylinder (h=14, r=2.8, center=true);
    translate ([0, 0, -2]) {
      cylinder (h=12, r=6.2, center=true);
    }
    translate ([0, 0, -4]) {
      cube ([40, 4, 8], center=true);
    }
    translate ([0, 6.5, -4]) {
      cube ([40, 3, 8], center=true);
    }
    translate ([0, -6.5, -4]) {
      cube ([40, 3, 8], center=true);
    }
    translate ([15, 0, -5]) {
      rotate (a=90.0, v=[1, 0, 0]) {
        cylinder (h=20, r=1.8, center=true);
      }
    }
    translate ([-15, 0, -5]) {
      rotate (a=90.0, v=[1, 0, 0]) {
        cylinder (h=20, r=1.8, center=true);
      }
    }
    translate ([8, 0, -5]) {
      rotate (a=90.0, v=[1, 0, 0]) {
        cylinder (h=20, r=1.8, center=true);
      }
    }
    translate ([-8, 0, -5]) {
      rotate (a=90.0, v=[1, 0, 0]) {
        cylinder (h=20, r=1.8, center=true);
      }
    }
  }
  translate ([11, 0, 5]) {
    rotate (a=90.0, v=[0, 1, 0]) {
      cylinder (h=2, r=2, center=true);
    }
  }
  translate ([0, 0, 8]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      union () {
        rotate (a=45.0, v=[0, 0, 1]) {
          cube ([2.8284271247461903, 2.8284271247461903, 9.6], center=true);
        }
        translate ([-4, 0, 0]) {
          rotate (a=45.0, v=[0, 0, 1]) {
            cube ([2.8284271247461903, 2.8284271247461903, 9.6], center=true);
          }
        }
        translate ([4, 0, 0]) {
          rotate (a=45.0, v=[0, 0, 1]) {
            cube ([2.8284271247461903, 2.8284271247461903, 9.6], center=true);
          }
        }
        translate ([-8, 0, 0]) {
          rotate (a=45.0, v=[0, 0, 1]) {
            cube ([2.8284271247461903, 2.8284271247461903, 9.6], center=true);
          }
        }
        translate ([8, 0, 0]) {
          rotate (a=45.0, v=[0, 0, 1]) {
            cube ([2.8284271247461903, 2.8284271247461903, 9.6], center=true);
          }
        }
      }
    }
  }
}
