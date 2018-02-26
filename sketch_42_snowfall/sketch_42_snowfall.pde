/*
  Brief description of the program here
 
 
 Author:Rituparna Matkar
 Email:rituparna.matkar@gmail.com
 */

float[] x = new float[500];
float[] y = new float[500];
float[] speed = new float[500];
int textSize=65;
int adder =2;

void setup() {
  PFont mono;
  mono = createFont("Grinched", 348);
  textFont(mono);
  size(600, 600);
  background(169, 187, 250);
  for (int i = 1; i<500; i++) {
    x[i]= random(0, width);
    y[i]= random(0, height);
    speed[i]= random(0, 3);
  }
  stroke(255);
  strokeWeight(5);
}

void draw() {

  background(169, 187, 250);

  for (int i = 1; i<500; i++) {
    if (y[i]>height) {
      y[i]=0;
    }
    if (x[i]>width) {
      x[i]=0;
    }
    point(x[i], y[i]);
    y[i]=y[i]+speed[i];
    x[i]=x[i]+random(-2, 2);
  }
  textSize(textSize);
  textSize=textSize+adder;
  if (textSize>100) {
    adder=-2;
  } else if (textSize<60) {
    adder=2;
  }

  fill(245, 12, 12);

  text("Merry", 300-textSize, 50+textSize);
  text("Christmas", 200-textSize, 150+textSize);
  text("and", 350-textSize, 250+textSize);
  text("Happy New Year!", 100-textSize, 350+textSize);

  textSize(34);
  text("-Rituparna Matkar", 300, 500);
}