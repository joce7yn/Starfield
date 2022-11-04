Particle[] hi = new Particle[800];
void setup()
{
  size(500, 500);
  noStroke();
  for (int i = 0; i < 5; i++) {
    hi[i] = new OddballParticle();
  }
  for (int i = 5; i < hi.length; i++) {
    hi[i] = new Particle();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i < hi.length; i++) {
    hi[i].move();
    hi[i].show();
  }
}
class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle() {
    myX = 250;
    myY = 250;
    myColor = color(#FAD047);
    myAngle = (double)(Math.random()*60);
    mySpeed = (double)(Math.random()*5);
  }
  void move() {
    myX = Math.cos(myAngle)*mySpeed + myX;
    myY = Math.sin(myAngle)*mySpeed + myY;
  }
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 5, 5);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle() {
    myX = 250;
    myY = 250;
    myColor = color(#1FC5FF);
    myAngle = (double)(Math.random()*5);
    mySpeed = .2;
  }
  void move() {
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 20, 20);
  }
}
