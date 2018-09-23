difference () {
  cube ([145, 120, 40], center=true);
  translate ([-1.5, 0, 0]) {
    cube ([142, 114, 40], center=true);
  }
  translate ([71, 0, -10]) {
    cube ([3, 120, 20], center=true);
  }
  translate ([67.5, 0, -5]) {
    cube ([4, 120, 10], center=true);
  }
  translate ([-52.5, -58.5, 0]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=3, r=11.5, center=true);
    }
  }
  translate ([-52.5, 58.5, 0]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=3, r=8.2, center=true);
    }
  }
  translate ([-36.9, 0, -15.6]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=120, r=1.8, center=true);
    }
  }
  translate ([-36.9, 0, 15.6]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=120, r=1.8, center=true);
    }
  }
  translate ([-68.1, 0, -15.6]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=120, r=1.8, center=true);
    }
  }
  translate ([-68.1, 0, 15.6]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=120, r=1.8, center=true);
    }
  }
}
