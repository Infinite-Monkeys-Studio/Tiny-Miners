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
  if(paused == true) {
    background(#CBCBCB);
    start.render();
  } else {
    background(#2A394B);
    
  }
}

void mouseClicked() {
  Button clicked = start.getClicked();
  if(clicked == null) {return;}
  
  if(paused){
    if(clicked.getText().equalsIgnoreCase("Start")) {
      print("Start!");
      paused = false;
    }
    
    if(clicked.getText().equalsIgnoreCase("Exit")) {
      exit();
    }
  }
}
