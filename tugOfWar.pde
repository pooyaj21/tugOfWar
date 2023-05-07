void setup() {
  background(0);
  size(900, 400);
}

void draw() {
  stroke(255);
  line((width/6), 0, (width/6), height);
  line(5*(width/6), 0, 5*(width/6), height);
  drawRope();
}


void drawRope() {
  noFill();
  stroke(255);
  rect(225, 0, 500, 500);
  bezier(225, 75, 525, -50, 525, 400, 725, 350);
  bezier(500, 300, 550, 325, 525, 450, 725, 350);
  //beginShape() use this
}
