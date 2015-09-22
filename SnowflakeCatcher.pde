void setup()
{
  size(400, 400);//your code here
}
void draw()
{
  //your code here
}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
  int x, y;
  boolean isMoving;//class member variable declarations
  Snowflake(int x, y)
  {
    x = (int)(Math.random()*400);
    y = (int)(Math.random()*400);
    isMoving = true;//class member variable initializations
  }
  void show()
  {
    fill(255,255,255);
    ellipse(x,y,5,5);//your code here
  }
  void lookDown()
  {
    if (y <= 400)
    {
      if (get(x, y+1) = color(0,0,0))
      {
        isMoving = false;
      }
      else
      {
        isMoving = true;
      }
    }//your code here
  }
  void erase()
  {
    fill(0);
    ellipse(x,y,7,7);//your code here
  }
  void move()
  {
    if (isMoving = true) 
    {
      y++;
    }
  }
  void wrap()
  {
    //your code here
  }
}


