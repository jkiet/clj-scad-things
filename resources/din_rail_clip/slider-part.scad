intersection () {
  union () {
    difference () {
      cube ([44, 20, 14], center=true);
      translate ([-14, 0, 3]) {
        rotate (a=45.0, v=[0, 1, 0]) {
          cube ([5.656854249492381, 20, 5.656854249492381], center=true);
        }
      }
      translate ([-10, 0, 7]) {
        rotate (a=45.0, v=[0, 1, 0]) {
          cube ([11.313708498984761, 20, 11.313708498984761], center=true);
        }
      }
      translate ([4, 0, 3]) {
        cube ([36, 20, 8], center=true);
      }
      translate ([2, 0, -4]) {
        cube ([32, 10, 6], center=true);
      }
      translate ([-20, 0, -5]) {
        rotate (a=45.0, v=[0, 1, 0]) {
          cube ([2.8284271247461903, 6, 2.8284271247461903], center=true);
        }
      }
    }
    translate ([17, 0, -4]) {
      rotate (a=90.0, v=[0, 1, 0]) {
        cylinder (h=2, r=2, center=true);
      }
    }
  }
  union () {
    translate ([-6, 0, 0]) {
      rotate (a=45.0, v=[0, 1, 0]) {
        cube ([26.870057685088806, 20, 26.870057685088806], center=true);
      }
    }
    translate ([8, 0, 0]) {
      cube ([28, 20, 14], center=true);
    }
  }
}
