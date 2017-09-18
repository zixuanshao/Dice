void setup()
{
  size(500, 550);
  noLoop();
}
void draw()
{
  background(255);
  int numone=0;
  int numtwo=0;
  int numfour=0;
  int numthree=0;
  int numfive=0;
  int numsix=0;
  int total=0;
  
  for(int y=0; y<500; y+=50)  
    for (int x=0; x<500; x=x+50)
      {
        Dice bob = new Dice(x, y);
        bob.show();
        if (bob.one == true)
        {
          numone = numone+1;
        }
        else if (bob.two == true)
        {
          numtwo = numtwo+1;
        }
        else if (bob.three == true)
        {
          numthree = numthree+1;
        }
        else if (bob.four == true)
        {
          numfour = numfour+1;
        }     
        else if (bob.five == true)
        {
          numfive = numfive+1;
        }
        else if (bob.six == true)
        {
          numsix = numsix+1;
        }
        total = numone*1+numtwo*2+numthree*3+numfour*4+numfive*5+numsix*6;
      }
   text("one:"+numone,20,520);
   text("two:"+numtwo,70,520);
   text("three:"+numthree,120,520);
   text("four:"+numfour,180,520);
   text("five:"+numfive,230,520);
   text("six:"+numsix,280,520);
   text("total:"+total,400,520);
}
void mousePressed()
{
  redraw();
}
class Dice
{
  int myX, myY;
  boolean one, two, three, four, five, six;

  Dice(int x, int y) 
  {
    myX=x;
    myY=y;
    roll();
  }
  void roll()
  {
        if(Math.random() < .1333)
       {
          one = true;
       }
    else if (Math.random() < .2)
       {
          two = true;
       }
    else if (Math.random() < .25)
       {
          three = true;
       }
    else if (Math.random() < .333)
       {
          four = true;
       }
    else if (Math.random() < .5)
       {
          five = true;
       }
    else 
       {
          six = true;
       }
  }
  void show()
  {
    float r =(int)(Math.random()*255+1);
    float g =(int)(Math.random()*255+1);
    float b =(int)(Math.random()*255+1);
    noStroke();
    fill(r, g, b);
    rect(myX,myY,40,40,5);
    
    stroke(255);
    fill(0);
    if (one == true)
    {
      ellipse(myX+20, myY+20, 10, 10);
    }
    else if (two == true)
    {
      ellipse(myX+12, myY+12, 10, 10);
      ellipse(myX+28, myY+28, 10, 10);
    }
    else if (three == true)
    {
      ellipse(myX+8, myY+8, 10, 10);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+32, myY+32, 10, 10);
    }
    else if (four == true)
    {
      ellipse(myX+12, myY+12, 10, 10);
      ellipse(myX+28, myY+28, 10, 10);
      ellipse(myX+12, myY+28, 10, 10);
      ellipse(myX+28, myY+12, 10, 10);
    }
    else if (five == true)
    {
      ellipse(myX+8, myY+8, 10, 10);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+32, myY+32, 10, 10);
      ellipse(myX+32, myY+8, 10, 10);
      ellipse(myX+8, myY+32, 10, 10);
    }
    else if (six == true)
    {
      ellipse(myX+8, myY+8, 10, 10);
      ellipse(myX+32, myY+32, 10, 10);
      ellipse(myX+8, myY+32, 10, 10);
      ellipse(myX+32, myY+8, 10, 10);
      ellipse(myX+8, myY+20, 10, 10);
      ellipse(myX+32, myY+20, 10, 10);
    }
  }
} 
