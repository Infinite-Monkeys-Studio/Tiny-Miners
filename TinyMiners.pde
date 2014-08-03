
void setup() {
  size(800, 600);
}

void draw() {
  textSize(100);
  fill(0, 102, 153, 51);
  textAlign(CENTER, BOTTOM);
  text("Tiny Miners", width/2, 150);
  textSize(102);
  fill(255);
  text("Tiny Miners", width/2, 150);
  
  PImage m = miner();
  image(m, width/2 - m.width/2, height/2 - m.height/2);
}

PImage miner() {
  return loadImage("miner.png");
}
