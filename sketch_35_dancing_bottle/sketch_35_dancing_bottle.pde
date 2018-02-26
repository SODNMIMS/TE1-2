/*
Dancing bottle  
 
 Author:Rituparna Matkar
 Email:rituparna.matkar@gmail.com
 */
PImage bot;
float c, x, y;
void setup() {
  background(255);
  size(600, 600);
  bot = loadImage("bottle.png");
  c = 0.1;
  frameRate(10);
}

void draw() 
{
  background(255);
  textSize(32);
  text("Nasha sharab me hota tho...", 10, 30);
  text("jhumti botle", 10, 70);
  fill(0, 102, 153);


  x = noise(c);
  y = noise(c+10);
  translate(x*width, y*height);
  rotate(c);
  image(bot, 0, 0);
  c = c + 0.1;
  print(x);
  println(y);
  resetMatrix();
}  