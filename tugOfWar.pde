int linePosition;
int ropePosition;
int sideKeyBodyLeft = 0;
int sideKeyMarkLeft = 255;
int sideKeyBodyRight = 0;
int sideKeyMarkRight = 255;


void setup() {
  background(0);
  size(900, 400);
}

void draw() {
  drawRope();
  drawSide();
  result();
}
void drawSide() {
  fill(sideKeyBodyLeft);
  stroke(sideKeyMarkLeft);
  strokeWeight(1);
  rectMode(CORNER);
  rect(0, 0, (width/6), height-1);//left side
  rect(30, 30, (width/6)-60, (height)-61);
  line(0, 0, 30, 30);
  line((width/6), 0, (width/6)-30, 30);
  line(0, height-1, 30, height-30);
  line((width/6), height-1, (width/6)-30, height-30);

  fill(sideKeyBodyRight);
  stroke(sideKeyMarkRight);
  rect(5*(width/6), 0, (width/6)-1, height-1);
  rect(5*(width/6)+30, 30, (width/6)-61, height-61);
  line(width-1, 0, width - 30, 30);
  line(width-1, height-1, width - 30, height - 30);
  line(5*(width/6), 0, 5*(width/6)+30, 30);
  line(5*(width/6), height-1, 5*(width/6)+30, height-30);



  rectMode(CENTER);
  fill(sideKeyMarkLeft);
  stroke(sideKeyMarkLeft);
  rect((width/12)+10, height/2, 30, 10);
  triangle((width/12)-20, height/2, (width/12)-5, (height/2)+10, (width/12)-5, (height/2)-10);

  fill(sideKeyMarkRight);
  stroke(sideKeyMarkRight);
  rect(11*(width/12)-10, height/2, 30, 10);
  triangle(11*(width/12)+20, height/2, 11*(width/12)+5, (height/2)+10, 11*(width/12)+5, (height/2)-10);
}

void drawRope() {

  for (int ropePosition=-80; ropePosition<80; ropePosition++) {
    noFill();
    strokeWeight(10);
    stroke(255);
    pushMatrix();
    translate(width/2+linePosition, height/2);
    scale(0.1, 0.1);
    bezier(225+(ropePosition*180), 75, 525+(ropePosition*180), -50, 525+(ropePosition*180), 400, 725+(ropePosition*180), 350);
    bezier(550+(ropePosition*190), 375, 525+(ropePosition*190), 300, 525+(ropePosition*190), 450, 725+(ropePosition*190), 350);
    if (ropePosition==0)line(ropePosition, ropePosition+400, ropePosition, ropePosition+800);
    popMatrix();
  }
}

void keyReleased() {
  if ( key == 'a'|| key == 'A') {
    background(0);
    linePosition-=10;
    sideKeyBodyLeft = 0;
    sideKeyMarkLeft = 255;
  }
  if (key == 'l' || key == 'L') {
    background(0);
    linePosition+=10;
    sideKeyBodyRight = 0;
    sideKeyMarkRight = 255;
  }
}

void keyPressed() {
  if ( key == 'a'|| key == 'A') {
    sideKeyBodyLeft = 255;
    sideKeyMarkLeft = 0;
  }
  if (key == 'l' || key == 'L') {
    sideKeyBodyRight = 255;
    sideKeyMarkRight = 0;
  }
}


void result() {
  if (linePosition<=-300) {
    noLoop();
    rectMode(CENTER);
    fill(0);
    rect(width/2, height/2, width/6, height/7);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(20);
    text("LEFT SIDE WON!!", width/2, height/2);
  }
  if (linePosition >= 300) {
    noLoop();
    rectMode(CENTER);
    fill(0);
    rect(width/2, height/2, width/6, height/7);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(18);
    text("RIGHT SIDE WON!!", width/2, height/2);
  }
}
