difference () {
  cube ([180, 192, 38], center=true);
  translate ([-1.5, 0, 1.5]) {
    cube ([177, 192, 35], center=true);
  }
  translate ([65, 83.5, 0]) {
    cube ([50, 33, 38], center=true);
  }
  translate ([65, -83.5, 0]) {
    cube ([50, 33, 38], center=true);
  }
  translate ([-37, 83.5, 0]) {
    cube ([106, 33, 38], center=true);
  }
  translate ([-37, -83.5, 0]) {
    cube ([106, 33, 38], center=true);
  }
  translate ([17.335, 83.5, -17.5]) {
    cube ([4, 15, 3], center=true);
  }
  translate ([38.665, 83.5, -17.5]) {
    cube ([4, 15, 3], center=true);
  }
  translate ([17.335, -83.5, -17.5]) {
    cube ([4, 15, 3], center=true);
  }
  translate ([38.665, -83.5, -17.5]) {
    cube ([4, 15, 3], center=true);
  }
  translate ([28, 96, -17.5]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      difference () {
        cylinder (h=20, r=15, center=true);
        cylinder (h=20, r=10, center=true);
      }
    }
  }
  translate ([28, -96, -17.5]) {
    rotate (a=90.0, v=[1, 0, 0]) {
      difference () {
        cylinder (h=20, r=15, center=true);
        cylinder (h=20, r=10, center=true);
      }
    }
  }
  translate ([88.5, 57.5, -6]) {
    cube ([3, 5, 12], center=true);
  }
  translate ([88.5, -57.5, -6]) {
    cube ([3, 5, 12], center=true);
  }
  translate ([88.5, 57.5, 14]) {
    cube ([3, 5, 12], center=true);
  }
  translate ([88.5, -57.5, 14]) {
    cube ([3, 5, 12], center=true);
  }
  translate ([58, 50, -17.5]) {
    cylinder (h=3, r=4.5, center=true);
  }
  translate ([58, -50, -17.5]) {
    cylinder (h=3, r=4.5, center=true);
  }
  translate ([15, 0, -17.5]) {
    cylinder ($fn=6, h=3, r=50, center=true);
  }
  translate ([-55, -30, -17.5]) {
    cylinder ($fn=6, h=3, r=25, center=true);
  }
  translate ([-55, 30, -17.5]) {
    cylinder ($fn=6, h=3, r=25, center=true);
  }
}
