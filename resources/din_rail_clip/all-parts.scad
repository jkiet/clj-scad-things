union () {
  translate ([25, 15, 4]) {
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
      translate ([6.5, 0, -4]) {
        rotate (a=45.0, v=[0, 1, 0]) {
          cube ([28.991378028648448, 20, 28.991378028648448], center=true);
        }
      }
    }
  }
  translate ([-25, 15, 7]) {
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
          translate ([20, 0, -5]) {
            rotate (a=45.0, v=[0, 1, 0]) {
              cube ([2.8284271247461903, 6, 2.8284271247461903], center=true);
            }
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
      rotate (a=45.0, v=[0, 1, 0]) {
        cube ([36.76955262170047, 20, 36.76955262170047], center=true);
      }
    }
  }
  translate ([-25, -15, 8]) {
    union () {
      difference () {
        union () {
          cube ([40, 20, 16], center=true);
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
        cylinder (h=20, r=2.8, center=true);
        translate ([0, 0, -1.5]) {
          cylinder (h=13, r=6.2, center=true);
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
    }
  }
  translate ([30, -20, 8]) {
    union () {
      difference () {
        union () {
          cube ([40, 30, 16], center=true);
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
        translate ([0, 0, 5]) {
          difference () {
            cube ([40, 30, 6], center=true);
            cube ([20, 9.6, 6], center=true);
          }
        }
        translate ([14.2, 0, 5]) {
          rotate (a=90.0, v=[0, 1, 0]) {
            cylinder (h=8.2, r=4.6, center=true);
          }
        }
        cylinder (h=20, r=2.8, center=true);
        translate ([0, 0, -1.5]) {
          cylinder (h=13, r=6.2, center=true);
        }
        translate ([0, 0, -3]) {
          cube ([40, 25, 5], center=true);
        }
      }
      translate ([11, 0, 5]) {
        rotate (a=90.0, v=[0, 1, 0]) {
          cylinder (h=2, r=2, center=true);
        }
      }
    }
  }
}
