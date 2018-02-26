/*
  Brief description of the program here
  random vs noise vs sine 
 
  Author:Rituparna Matkar
  Email:rituparna.matkar@gmail.com
 */
void setup() {
  size(600, 600);
  line (0,30,width,30 );
  line (0,90,width,90);
  line (0,150,width,150);

}
float x =0;
void draw() {
 
  point(x, random(15,45));
  point(x,    75  +  (noise(x/20) * 20));
  point(x,    150 +  (sin(x/20)   * 20));
  point(x,    150 +  (cos(x/20)   * 20));
  point(x,    150 +  (tan(x/20)   * 20));
  
  x= x+1;
}