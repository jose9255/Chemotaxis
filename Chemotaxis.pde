Bacteria[] aBunch;
void setup()
{
  size(500, 500);
  aBunch = new Bacteria[10];
  for (int i = 0; i < aBunch.length; i++)
  {
    aBunch[i] = new Bacteria();
  }
}


void draw()
{

  background(0);
  for (int i=0; i< aBunch.length; i++)
  {
    aBunch[i].show();
    aBunch[i].walk();
  }


  //notBob.show();
  //notBob.walk();
}

class Bacteria
{
  int myX, myY;
  Bacteria()
  {
    myX = myY = 250;
  }

  void walk()
  {
    myX = myX + (int)(Math.random()*5)-2;
    myY = myY + (int)(Math.random()*5)-2;
  }
  void show()
  {
    fill((int)(Math.random()*256), (int)(Math.random()*256), ((int)(Math.random()*256)));
    ellipse(myX, myY, 30, 30);
    noStroke();
    if (mousePressed == true)
    {
      myX = myX + (int)(Math.random()*5)-3;
      myY = myY + (int)(Math.random()*5)-3;
    }
  }
}
