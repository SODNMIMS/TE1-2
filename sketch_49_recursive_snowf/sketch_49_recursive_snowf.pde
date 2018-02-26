/*
  Brief description of the program here
 
 
 Author:Rituparna Matkar
 Email:rituparna.matkar@gmail.com
 */
void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotate(radians(-30));
  stroke(255);
  line(0, 0, 0, -120);
  translate(0, -120);
  branch(120);
}
void branch(float h) {
  h=h*0.66;
  if (h>30) {
    pushMatrix();
    rotate(radians(60));
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();

    pushMatrix();
    rotate(radians(120));
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();

    pushMatrix();
    rotate(radians(180));
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();

    pushMatrix();
    rotate(radians(240));
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
  }
}