Particle[] lex = new Particle[100];
void setup()
{
  size(400, 400);
  for (int i = 0; i < lex.length; i++)
  {
    lex[i] = new Particle();
    lex[0] = new OddballParticle();
  }
}

void draw()
{
  background(255,235,240);
  for (int i = 0; i < lex.length; i++)
  {
    lex[i].move();
    lex[i].show();
  }
  lex[0].move();
  lex[0].show();
}

void mousePressed()
{
  for (int i = 0; i < lex.length; i++)
  {
    if (i % 2 == 0)
    {
      lex[i] = new Particle();
    }
    if (i == 3)
    {
      lex[i] = new OddballParticle();
    }
  }
}

class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle()
  {
    myX = 200;
    myY = 200;
    mySpeed = Math.random()*2*Math.PI;
    myAngle = Math.random()*10;
    myColor = color(252,221,134);
  }
  void move()
  {
    myX = myX + (Math.cos(myAngle)*(mySpeed));
    myY = myY + (Math.sin(myAngle)*(mySpeed));
  }
  void show()
  {
    fill(myColor);
    noStroke();
    rect((float)myX, (float)myY, 10, 50);
  }
}
class OddballParticle extends Particle
{
  OddballParticle()
  {
    myX = 200;
    myY = 200;
    mySpeed = Math.random()*5;
    myAngle = Math.random()*10*Math.PI;
    myColor = color(252,221,134);
  }
  void move()
  {
    myX = myX + (Math.cos(myAngle)*(mySpeed));
    myY = myY + (Math.sin(myAngle)*(mySpeed));
  }
  void show()
  {
    stroke(235,192,75);
    fill(myColor);
    rect((float)myX+10, (float)myY-40, 10, 50);
    rect((float)myX+30, (float)myY-40, 10, 50);
    rect((float)myX, (float)myY-30, 10, 50);
    rect((float)myX+20, (float)myY-30, 10, 50);
    rect((float)myX+40, (float)myY-30, 10, 50);
    fill(255,0,0);
    noStroke();
    rect((float)myX,(float)myY,50,60);
  }
}


