/*
  Brief description of the program here
 
 
 Author:Rituparna Matkar
 Email:rituparna.matkar@gmail.com
 */
float a, x, y, c, s;

void setup() {
  size(600, 600);  
  a= 1;
}
void draw() {
  x = map(sin(a*.1), -1, 1, 0, height);
  y =  map(cos(a*.2), -1, 1, 0, width);
  c = map(sin(a), -1, 1, 0, 255);
  s = map(sin(a), -1, 1, 10, 20);
  fill(c, s, 10);
  ellipse(x, y, s, s);
  a = a+.05;
}