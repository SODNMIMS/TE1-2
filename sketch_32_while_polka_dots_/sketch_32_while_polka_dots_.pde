size(400,400);
noStroke();
colorMode(HSB);
background(random(10,255),255,255);
float x = 0;
ellipseMode(CORNER);
while(x<width){  
 float y =0;
 while(y<height){
   fill(255);
   ellipse(x,y,30,20);
    y = y + 40;
 }
  x= x+40;
}