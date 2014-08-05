private Menu start;
boolean paused = true;

void setup() {
  size(800, 600);
  Title title = new Title();
  start = title.getMenu();
}

void draw() {
   background(#CBCBCB);
  if(paused) {
    start.render();
  } else {
    drawFloor(loadImage("floor.png"));
  }
}

void mouseClicked() {
  Button clicked = start.getClicked();
  if(clicked == null) {return;}
  
  if(clicked.getText().equalsIgnoreCase("Start")) {
    print("Start!");
    paused = false;
  }
  
  if(clicked.getText().equalsIgnoreCase("Exit")) {
    exit();
  }
}

public PVector mouse() {
  //UNUSED
  return new PVector(mouseX, mouseY);
}

void drawFloor(PImage im) {
  for(int x = 0; x > width; x =+ 100) {
    for(int y = 0; y > height; y =+ 100) {
      image(im, x, y);
    }
  }
}
