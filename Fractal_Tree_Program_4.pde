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
