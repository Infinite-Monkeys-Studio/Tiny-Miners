Button start;

void setup() {
  size(800, 600);
  start = new Button("Start");
  start.setColor(color(200));
  start.setLoc(new PVector(400, 500));
  start.setSize(new PVector(200, 80));
}

void draw() {
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

class Button {
 
  String text;
  color col;
  PVector loc;
  PVector size;
  
  Button(String t) {
    text = t;
  }
  
  void render() {
    pushMatrix();
    fill(col);
    rect(loc.x - size.x/2, loc.y - size.y/2, size.x, size.y);
    fill(255);
    textSize(size.y - 10);
    textAlign(CENTER, CENTER);
    text(text, loc.x , loc.y);
    popMatrix();
  }
  
  void setColor(color c) {
    col = c;
  }
  
  color getColor() {
    return col;
  }
  
  void setLoc(PVector l) {
    loc = l;
  }
  
  PVector getLoc() {
    return loc;
  }
  
  void setSize(PVector s) {
    size = s;
  }
  
  PVector getSize() {
    return size;
  }
  
  String getText() {
    return text;
  }
}
