Walker[] bob;
void setup()
{
  size(600, 600);
  bob = new Walker[1000];
  for (int i = 0; i < bob.length; i++)
  {
    bob[i] = new Walker();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].walk();
  }
}
class Walker
{
  int myX, myY;
  Walker()
  {
    myX = myY = 300;
  }
  void walk()
  {
    myX = myX + (int) (Math.random()*7)-3;
    myY = myY + (int) (Math.random()*7)-3;
  }
  void show() {
    ellipse(myX, myY, 40, 40);
  }
}
