/*
//float d;
//float n = (float)(Math.random()*4)+3;

public void setup() 
{
  size(500,500);
  background(26,71,42);
  strokeWeight(3);
  stroke(255);
  //frameRate(2);
}

public void draw() 
{
  background(26,71,42);
  line(250,500, 250,400);
  drawBranch(250,400,100);
  //line(250,350, 250 + cos(5*PI/4)*100, 350 + sin(5*PI/4)*100);
  //line(250,350, 250 + cos(7*PI/4)*100, 350 + sin(7*PI/4)*100);
}

public void mouseMoved(){
  //d = radians(random(225,315)); //radians((mouseX)/20);// / (float)width)*90f);
}

public void drawBranch(float x, float y, float len)
{
  line(x,y, x + cos(5*PI/4)*len, y + sin(5*PI/4)*len);
  line(x,y, x + cos(7*PI/4)*len, y + sin(7*PI/4)*len);
  //line(x,y, x + cos(d)*len, y + sin(d)*len);
  //line(x,y, x + cos(d)*len, y + sin(d)*len);
  if(len >= 15){
    drawBranch(x + cos(5*PI/4)*len, y + sin(5*PI/4)*len, len*2/3);
    drawBranch(x + cos(7*PI/4)*len, y + sin(7*PI/4)*len, len*2/3);
    //drawBranch(x + cos(d)*len, y + sin(d)*len, len*2/3);
    //drawBranch(x + cos(d), y + sin(d)*len, len*2/3);
  }

}
*/

int startX = 250;
int startY = 500;
int endX = 250;
int endY = 450;
int count = 7;
float s = 4;

float r2 = PI/4; 


public void setup() 
{
  size(500,500);
  //size(1000,1000);
  //background(26,71,42);
  strokeWeight(3); //((int)(Math.random()*6)+1);
  //frameRate(10);
  stroke(103,192,92);
}
//rise/run = 4/5
public void draw() 
{
  background(26,71,42);
  line(startX, startY, endX, endY);
  drawBranch(endX, endY, 150, r2, count);
}


void mouseMoved()
{
  r2 = radians((mouseX / (float)width)*90f);
}

//branch(width/2, height, roation, len)

public void drawBranch(float x, float y, float len, float r, int max){ 
  translate(x,y); // WHAT IS THE PURPOSE OF THIS?
  line(0,0,0,-len); // line above start line, WHY?
  //strokeWeight(s*0.7);
  
  
  if(max == 0)
    return;
  else
  {
    pushMatrix();
    translate(0, -len);
    rotate(-r);
    //line(0,0,0,-len); //-- WHY DOES NOT HAVING THIS MAKE PERFECT BRANCHES?
    drawBranch(0,0, len * 0.7, r, max - 1);
    popMatrix();
    
    pushMatrix();
    translate(0, -len);
    rotate(r);
    //line(0,0,0,-len);
    drawBranch(0,0, len * 2/3, r, max - 1);
    popMatrix();   
  }
}
