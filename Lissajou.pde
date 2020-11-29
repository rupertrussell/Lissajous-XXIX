// Created with "Processing":http://processing.org/
// Draws a Lissajous figures
// 2 April 2011 
// http://www.rupert.id.au/tutorials/processing/examples.php
// artwork on redbubble at: https://www.redbubble.com/shop/ap/6999637
// code on Github at: https://github.com/rupertrussell/Lissajous-XXIX

int screen_width = 763;
int screen_height = 648;

/* Scale image and reduce by 5 pixels to remove from edge of screen */
int AX = (screen_width / 2) - 15;
int BX = (screen_height / 2) - 15;

float a = 2 * 14; 
float b = 1 * 14;
float x1;
float y1;
float x2;
float y2;

int counter = 0;
int saveCounter = 0;
String file_name;

void setup() {
  smooth();
  fill(255);
  strokeWeight(1);   
  size(763, 648);
  background(0);
  fill(255);
  stroke(255);
}

// Based on Microworlds LOGO code from http://www.mathcats.com/gallery/15wordcontest.html
// repeat 360 [setxy (sin(2 * repcount)) * 150 (sin(3 * repcount)) * 150] 

void draw() {
  // Find 2 points and draw a line between them
  x1 = (sin(a * counter) * AX) + screen_width / 2;
  y1 = (sin(b * counter) * BX) + screen_height / 2;

  counter = counter + 1;
  x2 = (sin(a * counter) * AX) + screen_width / 2;
  y2 = (sin(b * counter) * BX) + screen_height / 2;

  line(x1, y1, x2, y2);
  ellipse(x1, y1, 2, 2);

  saveCounter = saveCounter + 1;
  if (saveCounter == 365) {
    String file_name = "Lissajou_a=" + str(a) + "_b=" + str(b);
   // save(file_name + ".png");
    noLoop();
   // exit();
  }
}
