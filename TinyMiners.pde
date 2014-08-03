
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
  
  shape(miner(), width/2, height/2);
}

PShape miner() {
  return loadShape("miner.svg");
}
