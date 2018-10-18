Die bob;
void setup()
{
  noLoop();
  size(1000,1000);
}
void draw()
{
for (int y = 0; y <= 1000; y = y + 50)
  {
  for (int x = 0; x <= 1000; x= x + 50)
  {
  bob = new Die(x,y);
  bob.show();
  bob.roll();
  }
  }
  
  
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, myColor, myColor2, myDot;
  //variable declarations here

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    myColor = color((int) (Math.random() * 255), (int) (Math.random()*255), (int) (Math.random()*255));
    myColor2 = color((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
    roll();
  }
  void roll()
  {
    myDot =(int) (Math.random()*6)+1;
  }

  void show()
  {
    fill(myColor);
    rect(myX, myY, 40, 40);
   if (myDot == 1)
    {
      fill(myColor2);
      ellipse(myX + 20, myY + 20, 10, 10);
    } else if (myDot == 2)
    {
      fill(myColor2);
      ellipse(myX + 20, myY + 30, 10, 10);
      ellipse(myX + 20, myY + 10, 10, 10);
    } else if (myDot == 3)
    {
      fill(myColor2);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 20, myY + 20, 10, 10);
      ellipse(myX + 30, myY + 30, 10, 10);
    } else if (myDot == 4)
    {
      fill(myColor2);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 30, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 30, 10, 10);
      ellipse(myX + 30, myY + 30, 10, 10);
    } else if (myDot == 5)
    {
      fill(myColor2);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 30, myY + 10, 10, 10);
      ellipse(myX + 20, myY + 20, 10, 10);
      ellipse(myX + 10, myY + 30, 10, 10);
      ellipse(myX + 30, myY + 30, 10, 10);
    } else if (myDot == 6)
    {
      fill(myColor2);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 20, 10, 10);
      ellipse(myX + 10, myY + 30, 10, 10);
      ellipse(myX + 30, myY + 10, 10, 10);
      ellipse(myX + 30, myY + 20, 10, 10);
      ellipse(myX + 30, myY + 30, 10, 10);
    }
  }
}
