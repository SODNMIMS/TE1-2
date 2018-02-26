int x = 400;
int y = 400;
int gap = 15;
int i = 0;
long lastTime = 0;

void setup() {
  background(0);
  lastTime = millis();//store the current time
  size(400, 400);
  line (x/2, 0, x/2, y);
  line (0, y/2, x, y/2);
  frameRate(20);
}
void draw() {
    line (x/2, i*gap, (x/2)+((i)*gap), y/2);
    line (x/2, i*gap, (x/2)-((i)*gap), y/2);
    line (x/2, y-i*gap, (x/2)+((i)*gap), y/2);
    line (x/2, y-i*gap, (x/2)-((i)*gap), y/2);  
  i++;
  if (i >= x/gap/2){
    stroke(random(10,255),random(10,255),random(10,255));
    i = 0;
  }
}