/*
  Brief description of the program here
 
 
 Author:Rituparna Matkar
 Email:rituparna.matkar@gmail.com
 */
float[] x = {};
float[] y = {};

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  for (int i=0; i<x.length; i++) {
    ellipse(x[i], y[i], 20, 20);
    x[i]=x[i]+random(-2, 2);
    y[i]=y[i]  +random(-2, 2);
  }
}

void mouseClicked() {
  x= append(x, mouseX);
  y= append(y, mouseY);
}