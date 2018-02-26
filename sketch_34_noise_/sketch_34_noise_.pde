/*
  the use of the noise method  
 
  Author:Rituparna Matkar
  Email:rituparna.matkar@gmail.com
 */
 float xoff = 0.0;
void setup() {
  size(600, 600);
}

void draw() {
  background(204);
  xoff = xoff + .01;
  float n = noise(xoff) * width;
  line(n, 0, n, height);
  float n1 = noise(xoff+10) * width;
  line(n1, 0, n1, height);
}