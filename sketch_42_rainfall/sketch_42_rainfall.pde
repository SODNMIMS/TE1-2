/*
  Brief description of the program here
 
 
 Author:Rituparna Matkar
 Email:rituparna.matkar@gmail.com
 */

float[] x = new float[500];
float[] y = new float[500];
float[] speed = new float[500];


void setup() {
  PFont mono;
  mono = createFont("Grinched",32);
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
    x[i]=x[i]+random(-2,2);
  }
  textSize(65);
  fill(245,12,12);
  
  text("Merry",100,100);
  text("Christmas",200,300);
  
}