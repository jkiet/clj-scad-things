intersection () {
  difference () {
    cube ([44, 20, 8], center=true);
    translate ([14, 0, 0]) {
      cube ([4, 20, 4], center=true);
    }
    translate ([12, 0, 4]) {
      rotate (a=45.0, v=[0, 1, 0]) {
        cube ([8.48528137423857, 20, 8.48528137423857], center=true);
      }
    }
    translate ([16, 0, 0]) {
      rotate (a=45.0, v=[0, 1, 0]) {
        cube ([2.8284271247461903, 20, 2.8284271247461903], center=true);
      }
    }
    translate ([0, 0, 3]) {
      cube ([20, 20, 2], center=true);
    }
    cylinder (h=8, r=2.8, center=true);
    translate ([0, 0, 1]) {
      cylinder (h=2, r=6.2, center=true);
    }
    translate ([0, 0, -4]) {
      rotate (a=90.0, v=[1, 0, 0]) {
        union () {
          rotate (a=45.0, v=[0, 0, 1]) {
            cube ([2.8284271247461903, 2.8284271247461903, 10], center=true);
          }
          translate ([-4, 0, 0]) {
            rotate (a=45.0, v=[0, 0, 1]) {
              cube ([2.8284271247461903, 2.8284271247461903, 10], center=true);
            }
          }
          translate ([4, 0, 0]) {
            rotate (a=45.0, v=[0, 0, 1]) {
              cube ([2.8284271247461903, 2.8284271247461903, 10], center=true);
            }
          }
          translate ([-8, 0, 0]) {
            rotate (a=45.0, v=[0, 0, 1]) {
              cube ([2.8284271247461903, 2.8284271247461903, 10], center=true);
            }
          }
          translate ([8, 0, 0]) {
            rotate (a=45.0, v=[0, 0, 1]) {
              cube ([2.8284271247461903, 2.8284271247461903, 10], center=true);
            }
          }
        }
      }
    }
    translate ([14, 0, -7]) {
      rotate (a=90.0, v=[0, 1, 0]) {
        cylinder (h=8.4, r=4.6, center=true);
      }
    }
  }
  translate ([6, 0, -4]) {
    rotate (a=45.0, v=[0, 1, 0]) {
      cube ([28.284271247461902, 20, 28.284271247461902], center=true);
    }
  }
}
