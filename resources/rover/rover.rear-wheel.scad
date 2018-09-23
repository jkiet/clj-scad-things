difference () {
  union () {
    rotate_extrude ($fn=256) {
      polygon (points=[[8.25, 0], [8.25, 15], [7, 16], [7, 44], [8.25, 45], [8.25, 50], [12, 50], [12, 4], [42, 4], [42, 50], [45, 50], [45, 49], [44, 48], [44, 31], [45, 30], [45, 0]]);
    }
    rotate (a=22.5, v=[0, 0, 1]) {
      translate ([-27, 0, 26]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          cube ([32, 48, 2], center=true);
        }
      }
    }
    rotate (a=67.5, v=[0, 0, 1]) {
      translate ([-27, 0, 26]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          cube ([32, 48, 2], center=true);
        }
      }
    }
    rotate (a=112.5, v=[0, 0, 1]) {
      translate ([-27, 0, 26]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          cube ([32, 48, 2], center=true);
        }
      }
    }
    rotate (a=157.5, v=[0, 0, 1]) {
      translate ([-27, 0, 26]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          cube ([32, 48, 2], center=true);
        }
      }
    }
    rotate (a=202.49999999999997, v=[0, 0, 1]) {
      translate ([-27, 0, 26]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          cube ([32, 48, 2], center=true);
        }
      }
    }
    rotate (a=247.49999999999997, v=[0, 0, 1]) {
      translate ([-27, 0, 26]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          cube ([32, 48, 2], center=true);
        }
      }
    }
    rotate (a=292.50000000000006, v=[0, 0, 1]) {
      translate ([-27, 0, 26]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          cube ([32, 48, 2], center=true);
        }
      }
    }
    rotate (a=337.49999999999994, v=[0, 0, 1]) {
      translate ([-27, 0, 26]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          cube ([32, 48, 2], center=true);
        }
      }
    }
  }
  rotate (a=0.0, v=[0, 0, 1]) {
    translate ([26, 0, 0]) {
      cylinder (h=16, r=8, center=true);
    }
  }
  rotate (a=45.0, v=[0, 0, 1]) {
    translate ([26, 0, 0]) {
      cylinder (h=16, r=8, center=true);
    }
  }
  rotate (a=90.0, v=[0, 0, 1]) {
    translate ([26, 0, 0]) {
      cylinder (h=16, r=8, center=true);
    }
  }
  rotate (a=135.0, v=[0, 0, 1]) {
    translate ([26, 0, 0]) {
      cylinder (h=16, r=8, center=true);
    }
  }
  rotate (a=180.0, v=[0, 0, 1]) {
    translate ([26, 0, 0]) {
      cylinder (h=16, r=8, center=true);
    }
  }
  rotate (a=225.0, v=[0, 0, 1]) {
    translate ([26, 0, 0]) {
      cylinder (h=16, r=8, center=true);
    }
  }
  rotate (a=270.0, v=[0, 0, 1]) {
    translate ([26, 0, 0]) {
      cylinder (h=16, r=8, center=true);
    }
  }
  rotate (a=315.0, v=[0, 0, 1]) {
    translate ([26, 0, 0]) {
      cylinder (h=16, r=8, center=true);
    }
  }
  translate ([0, 0, 1]) {
    difference () {
      cylinder (h=2, r=38, center=true);
      cylinder (h=2, r=36, center=true);
    }
  }
}
