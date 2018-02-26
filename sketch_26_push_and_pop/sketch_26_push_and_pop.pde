void setup() {
  size(400, 400);
  frameRate(1);
}

void draw() {
  for(int i =0;i<10;i++){
    translate(i*5,i*5);
    ellipseMode(CENTER);
    ellipse(0,0,10,10);
    pushMatrix();
  }
  for(int i =0;i<10;i++){
    popMatrix();
//    rectMode(CENTER);
    rect(0,0,10,10);
  }
}