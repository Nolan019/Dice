void setup()
{
  size(450,500);
  noLoop();
}
int sum = 0;

void draw()
{
  background(100);
  for (int y = 100; y <= 300; y+=100)
  {
    for (int x = 100; x <= 300; x+=100) {
      Die bob = new Die(x, y);
      bob.show();    
    }
  }
  text("Total: " + sum, 200,400);
}
void mousePressed()
{
  redraw();
  sum = 0;
 
}
class Die
{
  int myX, myY, dotNum;
  Die(int x, int y)
  {
    roll();
    myX = x;
    myY =y;
  }
  void roll()
  {
    dotNum = (int)(Math.random()*6)+1;
    sum = sum + dotNum;
    
  }
  void show()
{
  noStroke();
  fill(255);
  rect(myX,myY,50,50);
  fill(0);
  if (dotNum == 1)
  ellipse(myX+25, myY+25, 10, 10);
  else if (dotNum == 2) {
  ellipse(myX+10, myY+10, 10, 10);
  ellipse(myX+40, myY+40, 10, 10);
  }
  else if (dotNum == 3) {
  ellipse(myX+40, myY+40, 10, 10);
  ellipse(myX+25, myY+25, 10, 10);
  ellipse(myX+10, myY+10, 10, 10);
  }
  else if (dotNum == 4) {
  ellipse(myX+10, myY+10, 10, 10);
  ellipse(myX+40, myY+10, 10, 10);
  ellipse(myX+40, myY+40, 10, 10);
  ellipse(myX+10, myY+40, 10, 10);
  }
  else if (dotNum == 5) {
  ellipse(myX+25, myY+25, 10, 10);
  ellipse(myX+10, myY+10, 10, 10);
  ellipse(myX+40, myY+10, 10, 10);
  ellipse(myX+40, myY+40, 10, 10);
  ellipse(myX+10, myY+40, 10, 10);
  }
  else {
  ellipse(myX+10, myY+25, 10, 10);
  ellipse(myX+40, myY+25, 10, 10);
  ellipse(myX+10, myY+10, 10, 10);
  ellipse(myX+40, myY+10, 10, 10);
  ellipse(myX+40, myY+40, 10, 10);
  ellipse(myX+10, myY+40, 10, 10);
  }
  
}
}
