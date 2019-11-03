
int thick;
int hue;
int box;

int x;
int y;
int z;

void setup(){
  x = 0;
  y = 0;
  z = 0;
  
  thick = 1;
  box = 1;
  hue = 100;
  fullScreen();
  background(250);
  textSize(30);
}

void draw(){
  strokeWeight(thick);
  
  if (mousePressed == true && box == 1) {
    stroke(hue);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  if (mousePressed == true && box == -1){
    stroke(x, y, z);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void keyPressed() {
  if (key == 's') {      //press save to save the file
    save("SaveDraw.jpg");
  }
  
  if (key == 'p') {   //Increases thickness
    thick = thick * 2;
  }
  
  if (key == 'q' && thick >= 2){
      thick = thick / 2;
  }
  
  if (key == 'l' && hue < 245){  //Makes Lighter
    hue = hue + 10;
  }
  
  if (key == 'd' && hue > 10){
    hue = hue - 10;
  }
  
  if (key == 'f'){   //flips to color mode or black to B/W
    x = 0;
    y = 0;
    z = 0;
    box = box * -1;
  }
  
  if (key == 'r' && x < 205){ //increases red
    x = x + 50;
  }
  
  if (key == 'g' && y < 205){ //increases green
    y = y + 50;
  }
  
  if (key == 'b' && z < 205){ //increases blue
    z = z + 50;
  }
}
