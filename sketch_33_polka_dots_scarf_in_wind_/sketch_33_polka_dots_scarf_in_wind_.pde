void setup() {
 // size(400, 400);
  fullScreen();
  noStroke();
  colorMode(HSB);
}
float rot = 0;

void draw() {
  background( 25, 255, 255);

  float x = 0;
  ellipseMode(CORNER);
  while (x<100) {  
    float y =0;
    while (y<100) {
      fill(255);
      drawEl(x*30, y*30, 15, 10, rot+y);
      y = y +1;
    }
    x= x+1;
  }
  rot = rot + 0.1;
}

void drawEl(float x, float y, int sX, int sY, float rot) {
  translate(x, y);
  rotate(rot);
  ellipse(0, 0, sX, sY);
  resetMatrix();
}