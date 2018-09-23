difference () {
  cube ([45, 126, 40], center=true);
  translate ([1.5, 0, 0]) {
    cube ([42, 120, 40], center=true);
  }
  translate ([2.5, -61.5, 0]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=3, r=11.5, center=true);
    }
  }
  translate ([2.5, 61.5, 0]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=3, r=8.2, center=true);
    }
  }
  translate ([-13.1, 0, -15.6]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=126, r=1.8, center=true);
    }
  }
  translate ([-13.1, 0, 15.6]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=126, r=1.8, center=true);
    }
  }
  translate ([18.1, 0, -15.6]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=126, r=1.8, center=true);
    }
  }
  translate ([18.1, 0, 15.6]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      cylinder (h=126, r=1.8, center=true);
    }
  }
  translate ([-21, -17.5, 10]) {
    rotate (a=90.0, v=[0, 1, 0]) {
      cylinder (h=3, r=2.3, center=true);
    }
  }
  translate ([-21, 17.5, 10]) {
    rotate (a=90.0, v=[0, 1, 0]) {
      cylinder (h=3, r=2.3, center=true);
    }
  }
  translate ([-21, -17.5, -10]) {
    rotate (a=90.0, v=[0, 1, 0]) {
      cylinder (h=3, r=2.3, center=true);
    }
  }
  translate ([-21, 17.5, -10]) {
    rotate (a=90.0, v=[0, 1, 0]) {
      cylinder (h=3, r=2.3, center=true);
    }
  }
}
