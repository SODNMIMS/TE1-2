void setup() {
  size(400, 400);
  rectMode(CENTER);
}
int size = 400;
void draw() {
  size= size - 3;
  fill(random(0,255),random(0,255),random(0,255));
  rect(200,200,size,size);
  if (size <= 0){
    size = 400 ;
  }
}