int total = 0;
void setup()
{
  size(600,800);
  noLoop();
 background(134,136,138);
}
void draw()
{
//rows and columns
for(int x = 0; x < 601; x = x + 55)
{
for(int y = 0; y < 601; y = y + 55)
{
//creates new die from class Die
  Die one = new Die(x,y);
  one.show();
  one.roll();
  one.totalBox();
}
}
}
void mousePressed()
{
  redraw(); 
  //reset total
  total = 0;
}
class Die //draws one die
{
int dieX,dieY,dieRoll;
Die(int x, int y) //constructor
{
  dieX = x;
  dieY = y;
}
void show()
{
  //die background
  fill(((int)(Math.random()*2)),((int)(Math.random()*2)),((int)(Math.random()*2)));
  rect(dieX,dieY,45,45,5);
}
void roll()
{
//die dots
//roll number
dieRoll = (int)(Math.random()*6)+1;
stroke(#000000);
fill(#FFFFFF);
//drawing the dots depending on dieRoll number
if(dieRoll == 1)
{
  ellipse(dieX+25,dieY+25,10,10);
  total = total + 1;
}
else if(dieRoll == 2)
{
  ellipse(dieX+35, dieY+35, 10, 10);
  ellipse(dieX+15, dieY+15, 10, 10);
  total = total + 3;
}
else if(dieRoll == 3)
{
  ellipse(dieX+15, dieY+15, 10, 10);
  ellipse(dieX+25, dieY+25, 10, 10);
  ellipse(dieX+35, dieY+35, 10, 10);
  total = total + 3;
}
else if(dieRoll == 4)
{
  ellipse(dieX+15, dieY+35, 10, 10);
  ellipse(dieX+15, dieY+15, 10, 10);
  ellipse(dieX+35, dieY+35, 10, 10);
  ellipse(dieX+35, dieY+15, 10, 10);
  total = total + 4;
}
else if (dieRoll == 5)
{
  ellipse(dieX+15, dieY+35, 10, 10);
  ellipse(dieX+15, dieY+15, 10, 10);
  ellipse(dieX+35, dieY+35, 10, 10);
  ellipse(dieX+35, dieY+15, 10, 10);
  ellipse(dieX+25, dieY+25, 10, 10);
  total = total + 5;
}
else
{
  ellipse(dieX+15, dieY+13, 10, 10);
  ellipse(dieX+15, dieY+25, 10, 10);
  ellipse(dieX+15, dieY+37, 10, 10);
  ellipse(dieX+15, dieY+13, 10, 10);
  ellipse(dieX+15, dieY+25, 10, 10);
  ellipse(dieX+15, dieY+37, 10, 10);
  total = total + 6;
}
}
void totalBox()
{
  stroke(#000000);
  fill(#000000);
  textSize(40);
  rect(20,610,250,70);
  fill(#ffffff);
  text("Total #: " + total,30,660);
}
}
