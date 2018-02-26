/*
  Brief description of the program here
  TODO: exercise create a mat... 
 
  Author:Rituparna Matkar
  Email:rituparna.matkar@gmail.com
 */
void setup() {
  size(600, 600);
  colorMode(HSB);
  frameRate(2);
}
  float c = 0;
  int nStr = 18;
void draw() {
  for(int i=0;i<width/nStr;i=i+1){
    rect(i*nStr,0,nStr,600);
    noStroke();
    fill(noise(c)*255,255,255);
    c = c +.1;
  }
  for( int i= 0;i<height/nStr;i=i+2){
    rect(0,i*nStr,600,nStr);
    noStroke();
    fill(noise(c)*255,255,255);
    c = c +.1;
  }
  for(int i=0;i<width/nStr;i=i+2){
    rect(i*nStr,0,nStr,600);
    noStroke();
    fill(noise(c)*255,255,255);
    c = c +.1;
  }
}