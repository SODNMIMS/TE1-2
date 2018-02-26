int x = 400;
int y = 400;
int gap = 4;
int i = 0;
float r;
float backR;
float backG;
float backB;


void setup()
{
  size(400, 400);
  frameRate(10);
  backR = random(0, 100);
  backG = random(0, 100);
  backB = random(0, 100);
  noStroke();
  smooth();
}

void draw() {
  rect(0,0,x,y);
   fill(backR, backG, backB, 50);
  translate(x/2, y/2);
  rotate(r);
  r = r+.1;
  star(x/2, y/2, gap);
  line (0, -200, 10, 0);
}

void star(int x, int y, float gap) {
  stroke(random(10, 255), random(10, 255), random(10, 255));
  for (int i = 0; i <=(x/gap); i++) {
    line (0, -y+i*gap, ((i)*gap), 0);
    line (0, -y+i*gap, 0-((i)*gap), 0);
    line (i*gap, 0, 0, y-i*gap );
    line (-i*gap, 0, 0, y-i*gap);
  }
}