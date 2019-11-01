
void setup(){
  
  fullScreen();
  background(250);
  textSize(30);
}

void draw(){
  background(250);
  fill(300, 25,25);
  rect(100, 100,100,100);
}

void keyPressed() {
  if (key == 's') {
    save("SaveDraw.jpg");
  }
}
