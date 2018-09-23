difference () {
  cube ([20, 70, 22], center=true);
  translate ([0, 3, 1.5]) {
    cube ([20, 54, 19], center=true);
  }
  translate ([0, 3, 1]) {
    cube ([20, 58, 2], center=true);
  }
  translate ([8.9, -31, ]) {
    cube ([2.2, 8, 22], center=true);
  }
  translate ([-8.9, -31, ]) {
    cube ([2.2, 8, 22], center=true);
  }
  translate ([3.5, -31, ]) {
    cube ([3.2, 8, 22], center=true);
  }
  translate ([-3.5, -31, ]) {
    cube ([3.2, 8, 22], center=true);
  }
  translate ([0, -31, 1.5]) {
    rotate (a=90.0, v=[0, 1, 0]) {
      cylinder (h=20, r=1.8, center=true);
    }
  }
  translate ([0, -31, -6]) {
    rotate (a=90.0, v=[0, 1, 0]) {
      cylinder (h=20, r=1.8, center=true);
    }
  }
  translate ([-4, -15, ]) {
    cylinder ($fn=6, h=22, r=4, center=true);
  }
  translate ([-4, -5, ]) {
    cylinder ($fn=6, h=22, r=4, center=true);
  }
  translate ([-4, 5, ]) {
    cylinder ($fn=6, h=22, r=4, center=true);
  }
  translate ([-4, 15, ]) {
    cylinder ($fn=6, h=22, r=4, center=true);
  }
  translate ([-4, 25, ]) {
    cylinder ($fn=6, h=22, r=4, center=true);
  }
  translate ([4, -10, ]) {
    cylinder ($fn=6, h=22, r=4, center=true);
  }
  translate ([4, 0, ]) {
    cylinder ($fn=6, h=22, r=4, center=true);
  }
  translate ([4, 10, ]) {
    cylinder ($fn=6, h=22, r=4, center=true);
  }
  translate ([4, 20, ]) {
    cylinder ($fn=6, h=22, r=4, center=true);
  }
  translate ([0, -28.5, 9.5]) {
    cube ([12, 13, 9], center=true);
  }
  translate ([0, -24, 7]) {
    rotate (a=14.999999999999998, v=[1, 0, 0]) {
      cube ([20, 3, 10], center=true);
    }
  }
  translate ([0, 32.5, 5.5]) {
    cube ([16, 5, 7], center=true);
  }
  translate ([0, 30, 7]) {
    rotate (a=-14.999999999999998, v=[1, 0, 0]) {
      cube ([20, 3, 10], center=true);
    }
  }
}
