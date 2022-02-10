int startX = 250;
int startY = 500;
int endX = 0;
int endY = 150;

public void setup() {
  size(500,500);
  background(26,71,42);
  strokeWeight(5); //((int)(Math.random()*6)+1);
  frameRate(10);
  stroke(103,192,92);
}

public void draw() {
  while (startX < 500) {
    endX = startX + (int)(Math.random()*25)-10;
    endY = startY + (int)(Math.random()*10)-9;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed(){
  startX = 200;
  startY = 300;
  endX = 0;
  endY = 150;

  redraw();
}
