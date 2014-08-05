Menu start;
boolean paused = true;

void setup() {
  size(800, 600);
  Title title = new Title();
  start = title.getMenu();
}

void draw() {
  if(paused) {
    start.render();
  } else {
    
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
