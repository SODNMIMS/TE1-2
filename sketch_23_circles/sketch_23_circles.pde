int x, y, r,inc;
float i;
void setup() {  
  size(600, 600);
  background(255);
  x= 0;
  y=0;
  r= 5;
  i = .1;
  inc = 2;
   colorMode(HSB);
}

void draw() {
  translate(300,300);
  rotate(i);
  ellipse(x, y, r, r);
  fill(random(255),255,255);
    x= x+inc;
    y= y+inc;
  if (x >= 100) {
    inc = -inc*100;
  }else if(inc<0){
    inc = 3;
  }
  i = i+ .1;
}