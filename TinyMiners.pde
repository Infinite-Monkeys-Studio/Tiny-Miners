Menu start;

void setup() {
  size(800, 600);
  
  Button startButton= new Button("Start").setColor(#A58F8F).setLoc(new PVector(400, 500)).setSize(new PVector(200, 80));
  start = new Menu("Start").addButton(startButton);
}

void draw() {
  
  //Place title TODO move to class or method
  pushMatrix();
  textSize(100);
  fill(0, 102, 153, 51);
  textAlign(CENTER, BOTTOM);
  text("Tiny Miners", width/2, 150);
  textSize(102);
  fill(255);
  text("Tiny Miners", width/2, 150);
  popMatrix();
  
  PImage m = loadImage("miner.png");
  image(m, width/2 - m.width/2, height/2 - m.height/2);
  
  start.render();
}

void mouseClicked() {
  if(start.mouseOver()) {
    print("It worked!");
    //TODO start
  }
}
