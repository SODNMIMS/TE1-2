/*
  Brief description of the program here
 
 
 Author:Rituparna Matkar
 Email:rituparna.matkar@gmail.com
 */
float reX, reY;
float reX1, reY1;

float a = 0;
void setup() {
  size(600, 600);
  //  frameRate(10);
}

void draw() {
  background(110);
  //noCursor();
  reX = noise(a, 10)*width;
  reY = noise(a, 20)*height;

  fill(255);
  rect(reX1-50, reY1-100, 100, 200);
  if (dist(reX, reY, reX1, reY1)<200) {
    reX1=reX+50;
    reY1=reY-100;
  } else 
  {
    reX1=mouseX;
    reY1=mouseY;
  }
  rect(reX, reY, 100, 200);
  textSize(30);
  fill(0);
  text("N", reX+40, reY+30);
  text("S", reX+40, reY+180);
  text("N", reX1, reY1-70);
  text("S", reX1, reY1+70);

  a= a+.01;
}
void mouseClicked(){
  reX1=mouseX;
    reY1=mouseY;
}