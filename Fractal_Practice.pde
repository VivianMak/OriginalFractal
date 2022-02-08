int side2 = 200;
int x2 = 250;
int y2 = 250;
int fact = 2;

void setup(){
  size(500,500);
  frameRate(5);
  drawRect(200, width/2, height/2);
}

void draw(){ //recursion inside draw() draws it everytime = animation
  if(side2 > 10){ // base case
      side2 -= 10;
      drawRect(side2, x2+fact, y2+fact);
      drawRect(side2, x2-fact, y2-fact);
      fact +=2;
  }
}

public void drawRect(int side, int x, int y){ //change x and y pos
  stroke(255,0,0);
  noFill();
  rect(x,y,side,side);
}
