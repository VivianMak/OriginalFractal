int lenMouse = 100;
int x = 0;
int y = 500;

public void setup()
{
  size(500,500);
  background(0);
  frameRate(2);
  //sierpinski(x,y,len);
} // end setup()

public void draw()
{
  if(lenMouse >= 20){
    //background(0); // shows each frame
    sierpinski(x,y,lenMouse);
    lenMouse+=40;
  }
  /*
  if(len >= 10){
     sierpinski(x, y, len/2);
     sierpinski(x+len/2, y, len/2);
     sierpinski(x+len/4, y-len/2, len/2); 
     
     sierpinski(x, y, len/2);
     sierpinski(x-len/2, y, len/2);
     sierpinski(x-len/4, y+len/2, len/2); 
     len -= 7;
   }
   */
} // end draw()

public void mousePressed()//optional
{
  lenMouse = mouseX;
} //end mouseMoved()

public void sierpinski(int x, int y, int leng) 
{
  stroke(255);
  noFill();  
  //triangle(x,y, x+leng,y, x+leng/2,y-leng);
  if(leng < 20)
    triangle(x,y, x+leng,y, x+leng/2,y-leng);
   else{
     sierpinski(x, y, leng/2);
     sierpinski(x+leng/2, y, leng/2);
     sierpinski(x+leng/4, y-leng/2, leng/2); 
   }
} //end sierpinski(x,y,leng)
