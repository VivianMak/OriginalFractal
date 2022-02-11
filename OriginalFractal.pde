int startX = 250;
int startY = 500;
int endX = 250;
int endY = 400;
int count = 5;
float s = 4;

float r2; 


public void setup() 
{
  size(500,500);
  //size(1000,1000);
  background(26,71,42);
  strokeWeight(3); //((int)(Math.random()*6)+1);
  //frameRate(10);
  stroke(103,192,92);
}
//rise/run = 4/5
public void draw() 
{
  
  line(startX, startY, endX, endY);
  //drawBranch(endX, endY, 100, r2, count);
  
  if(count > 0){
    //background(0);
    drawBranch(endX, endY, 100, r2, count); //PI/4 //map(mouseX,0.0,(float)width/2,0.0,PI/2), 10);//r2, 10); 
    //background(26,71,42);
    count--;  
  }
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
