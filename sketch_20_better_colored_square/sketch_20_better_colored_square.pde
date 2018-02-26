void setup() {
  size(400, 400);
  rectMode(CENTER);
  colorMode(HSB);
  frameRate(10);
}
int size = 400;
void draw() {
  size= size - 5;
  fill(random(255), 255, 255);
  rect(200,200,size,size);
  if (size <= 0){
    size = 400 ;
  }
}