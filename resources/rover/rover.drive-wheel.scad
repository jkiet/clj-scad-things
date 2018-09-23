difference () {
  union () {
    rotate_extrude ($fn=256) {
      polygon (points=[[2.5, 0], [2.5, 22], [6, 22], [8, 8], [41, 8], [41, 50], [45, 50], [45, 49], [44, 48], [44, 31], [45, 30], [45, 0]]);
    }
    rotate (a=0.0, v=[0, 0, 1]) {
      translate ([-41, 0, 0]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          linear_extrude (height=3, convexity=10, center=true){
            polygon (points=[[0, 0], [0, 50], [5, 0]]);
          }
        }
      }
    }
    rotate (a=45.0, v=[0, 0, 1]) {
      translate ([-41, 0, 0]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          linear_extrude (height=3, convexity=10, center=true){
            polygon (points=[[0, 0], [0, 50], [5, 0]]);
          }
        }
      }
    }
    rotate (a=90.0, v=[0, 0, 1]) {
      translate ([-41, 0, 0]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          linear_extrude (height=3, convexity=10, center=true){
            polygon (points=[[0, 0], [0, 50], [5, 0]]);
          }
        }
      }
    }
    rotate (a=135.0, v=[0, 0, 1]) {
      translate ([-41, 0, 0]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          linear_extrude (height=3, convexity=10, center=true){
            polygon (points=[[0, 0], [0, 50], [5, 0]]);
          }
        }
      }
    }
    rotate (a=180.0, v=[0, 0, 1]) {
      translate ([-41, 0, 0]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          linear_extrude (height=3, convexity=10, center=true){
            polygon (points=[[0, 0], [0, 50], [5, 0]]);
          }
        }
      }
    }
    rotate (a=225.0, v=[0, 0, 1]) {
      translate ([-41, 0, 0]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          linear_extrude (height=3, convexity=10, center=true){
            polygon (points=[[0, 0], [0, 50], [5, 0]]);
          }
        }
      }
    }
    rotate (a=270.0, v=[0, 0, 1]) {
      translate ([-41, 0, 0]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          linear_extrude (height=3, convexity=10, center=true){
            polygon (points=[[0, 0], [0, 50], [5, 0]]);
          }
        }
      }
    }
    rotate (a=315.0, v=[0, 0, 1]) {
      translate ([-41, 0, 0]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          linear_extrude (height=3, convexity=10, center=true){
            polygon (points=[[0, 0], [0, 50], [5, 0]]);
          }
        }
      }
    }
    rotate (a=22.5, v=[0, 0, 1]) {
      translate ([-41, 0, 0]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          linear_extrude (height=3, convexity=10, center=true){
            polygon (points=[[0, 0], [0, 25], [25, 0]]);
          }
        }
      }
    }
    rotate (a=67.5, v=[0, 0, 1]) {
      translate ([-41, 0, 0]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          linear_extrude (height=3, convexity=10, center=true){
            polygon (points=[[0, 0], [0, 25], [25, 0]]);
          }
        }
      }
    }
    rotate (a=112.5, v=[0, 0, 1]) {
      translate ([-41, 0, 0]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          linear_extrude (height=3, convexity=10, center=true){
            polygon (points=[[0, 0], [0, 25], [25, 0]]);
          }
        }
      }
    }
    rotate (a=157.5, v=[0, 0, 1]) {
      translate ([-41, 0, 0]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          linear_extrude (height=3, convexity=10, center=true){
            polygon (points=[[0, 0], [0, 25], [25, 0]]);
          }
        }
      }
    }
    rotate (a=202.49999999999997, v=[0, 0, 1]) {
      translate ([-41, 0, 0]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          linear_extrude (height=3, convexity=10, center=true){
            polygon (points=[[0, 0], [0, 25], [25, 0]]);
          }
        }
      }
    }
    rotate (a=247.49999999999997, v=[0, 0, 1]) {
      translate ([-41, 0, 0]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          linear_extrude (height=3, convexity=10, center=true){
            polygon (points=[[0, 0], [0, 25], [25, 0]]);
          }
        }
      }
    }
    rotate (a=292.50000000000006, v=[0, 0, 1]) {
      translate ([-41, 0, 0]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          linear_extrude (height=3, convexity=10, center=true){
            polygon (points=[[0, 0], [0, 25], [25, 0]]);
          }
        }
      }
    }
    rotate (a=337.49999999999994, v=[0, 0, 1]) {
      translate ([-41, 0, 0]) {
        rotate (a=90.0, v=[1, 0, 0]) {
          linear_extrude (height=3, convexity=10, center=true){
            polygon (points=[[0, 0], [0, 25], [25, 0]]);
          }
        }
      }
    }
  }
  cube ([1, 30, 44], center=true);
  cube ([30, 1, 44], center=true);
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
  translate ([-8, -8, 5]) {
    cylinder (h=10, r=1.8, center=true);
  }
  translate ([-8, -8, 1.5]) {
    cylinder (h=3, r=4, center=true);
  }
  translate ([-8, 8, 5]) {
    cylinder (h=10, r=1.8, center=true);
  }
  translate ([-8, 8, 1.5]) {
    cylinder (h=3, r=4, center=true);
  }
  translate ([8, -8, 5]) {
    cylinder (h=10, r=1.8, center=true);
  }
  translate ([8, -8, 1.5]) {
    cylinder (h=3, r=4, center=true);
  }
  translate ([8, 8, 5]) {
    cylinder (h=10, r=1.8, center=true);
  }
  translate ([8, 8, 1.5]) {
    cylinder (h=3, r=4, center=true);
  }
  translate ([0, 0, 1]) {
    difference () {
      cylinder (h=2, r=38, center=true);
      cylinder (h=2, r=36, center=true);
    }
  }
}
