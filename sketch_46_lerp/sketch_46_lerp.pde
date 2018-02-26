/*
  Brief description of the program here
 
 
  Author:Rituparna Matkar
  Email:rituparna.matkar@gmail.com
 */
 float x=0;
 float y =0;
void setup() {
  size(600, 600);
}
 
void draw() {
  background(255);
  ellipse(x,y,20,20);
  x = lerp(x,mouseX,0.1);
  y = lerp(y,mouseY,0.5);  
}