Snowflake [] storm;
void setup()
{
  size(400, 400);
  storm = new Snowflake[1000];
  for (int i = 0; i < storm.length; i++)
  {
    storm[i] = new Snowflake(20,20);
  }

}
void draw()
{
  background(0);
  for (int i = 0; i < storm.length; i++)
  {
    storm[i].lookDown();
    storm[i].move();
    storm[i].wrap();
    storm[i].show();
  }
}
void mouseDragged()
{
  ellipse(mouseX, mouseY, 10, 10);//your code here
}

class Snowflake
{
  int x, y;
  boolean isMoving;//class member variable declarations
  Snowflake(int x, int y)
  {
    x = (int)(Math.random()*400);
    y = (int)(Math.random()*400);
    isMoving = true;//class member variable initializations
  }
  void show()
  {
    fill(255,255,255);
    noStroke();
    ellipse(x,y,4,4);//your code here
  }
  void lookDown()
  {
    if ((y >= 0 && y <= 400))
    {
      if (get(x,y+1) == color(255,255,255))
      {
        isMoving = false;
      }
      else
      {
        isMoving = true;
      }
    }
  }
  void erase()
  {
      fill(255,255,255);
      ellipse(x,y,3,3);//your code here
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
    if (x < 5)
    {
      y = (int)(Math.random()*400);
      x = (int)(Math.random()*400);
    }
    if (y > 400)
    {
      y = (int)(Math.random()*400);
      x = (int)(Math.random()*400);
    }
  }
}