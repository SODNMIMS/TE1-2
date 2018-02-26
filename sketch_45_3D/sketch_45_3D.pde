/*
  Brief description of the program here
 
 
 Author:Rituparna Matkar
 Email:rituparna.matkar@gmail.com
 */
float a =0;
float r =0;
float x[]={};
float y[]={};
void setup() {
  size(600, 600, P3D);
}

void draw() {
  background(155);
  translate(0, 0, 0);
  for (int i=0; i<x.length; i++) {
    pushMatrix();
    translate(x[i], y[i], map(noise(a), 0, 1, -300, 300));
    rotateY(r);
    rotateZ(r-.2);
    fill(255-x[i],255-y[i],100);
    box (30);    
    popMatrix();
  }
  a = a+.01;
  r = r+.1;
}

void mouseClicked() {
  x= append(x, mouseX);
  y= append(y, mouseY);
}