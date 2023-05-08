int linePosition;
int ropePosition;
void setup() {
  background(0);
  size(900, 400);

}

void draw() {
  stroke(255);
  line((width/6), 0, (width/6), height);
  line(5*(width/6), 0, 5*(width/6), height);
  drawRope();
  result();
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

void keyTyped() {
  if ( keyPressed && key == 'a') {
    background(0);
    linePosition-=10;
  }
  if ( keyPressed && key == 'l') {
    background(0);
    linePosition+=10;
  }
  if ( keyPressed && key == 'A') {
    background(0);
    linePosition-=10;
  }
  if ( keyPressed && key == 'L') {
    background(0);
    linePosition+=10;
  }
}

void result(){
 if(linePosition<=-300){
   noLoop();
   print("LEFT SIDE WON!!");
 }
 if (linePosition >= 300){
    noLoop();
   print("RIGHT SIDE WON!!");
 }
}

void reset(){
  
}
