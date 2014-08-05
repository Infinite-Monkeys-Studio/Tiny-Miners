private Menu start;
boolean paused = true;
PImage floorImg;

void setup() {
  size(800, 600);
  Title title = new Title();
  start = title.getMenu();
  floorImg = loadImage("floor.png");
}

void draw() {
  background(#CBCBCB);
  if(paused == true) {
    start.render();
  } else {
  // print("called");
    image(floorImg, 0, 0);
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
