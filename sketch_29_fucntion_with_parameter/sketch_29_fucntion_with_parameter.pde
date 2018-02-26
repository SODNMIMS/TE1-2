int x = 200;
int y = 200;
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
  rect(0,0,400,400);
  fill(backR, backG, backB, 50);
  //translate(x/4, y/4);
  //rotate(r);
  r = r+.1;
  rotateStar(100,100,200,200);  
  rotateStar(300,100,200,200);  
  rotateStar(100,300,200,200);  
  rotateStar(300,300,200,200);  
  
}
void rotateStar(int cenX,int cenY,int x,int y){
  translate(cenX,cenY);
  rotate(r);
  star(x/2, y/2, gap);
  resetMatrix();
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