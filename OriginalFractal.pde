//tubes cross in a shpere in a octahedron then AGAIN
int side2 = (int)(Math.random()*100)+250;;
int x2=250;
int y2=250;
int len = 2;
int c = color((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);


void setup(){
  size(500,500);
  background(0);
  frameRate(5);
  fill(255);
  drawCircle(50, width/2, height/2);
}

void draw(){ //recursion inside draw() draws it everytime = animation
  
  //stroke(219,196,132);
  //stroke(c);
  stroke(color((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1));
  noFill();
  if(side2 > 5){ // base case
      side2 -= 10;

      drawCircle(side2, x2+len, y2+len);
      drawCircle(side2, x2-len, y2-len);
      
      //drawCircle(350, x2+len*2, y2+len*2);
      //drawCircle(350, x2-len*2, y2-len*2);
     
     //drawCircle(50, x2+(int)(Math.random()*2)+2, y2+(int)(Math.random()*2)+2);

      drawCircle(50, x2+len, y2+len);
      drawCircle(50, x2-len, y2-len);
      drawCircle(50, x2+len, y2-len);
      drawCircle(50, x2-len, y2+len);
      
      drawCircle(350, x2+len*2, y2+len*2);
      drawCircle(350, x2-len*2, y2-len*2);
      drawCircle(350, x2-len*2, y2+len*2);
      drawCircle(350, x2+len*2, y2-len*2);
      
      
      len +=3;   //2;5;DIFFERENCE;
  }
}

public void drawCircle(int side, int x, int y){ //change x and y pos
  circle(x,y,side);
}
