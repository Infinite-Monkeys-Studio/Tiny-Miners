
void setup() {
  
}

void draw() {

}

PShape miner(String face) {  
  // Create the shape group
  PShape miner;
  
  if(face == "north") {
    s = loadShape("bot.svg");
  }
  
  if(face == "south") {
    
  }
  
  if(face == "east") {
    
  }
  
  if(face == "west") {
    
  }
  // Make child shapes
  head = createShape(RECT, -25, 0, 50, 50);
  head.setFill(color(255, 255, 255));
  head.setStroke(color(0, 0, 0);
  
  face = createShape(RECT,-25, 0, 50, 50);
  face.setFill(color(0));
  face.setStroke(color(0, 0, 0);
  
  body = createShape(RECT,-25, 0, 50, 50);
  body.setFill(color(0));
  body.setStroke(color(0, 0, 0);
  
  rArm = createShape(RECT,-25, 0, 50, 50);
  rArm.setFill(color(0));
  rArm.setStroke(color(0, 0, 0);
  
  lArm = createShape(RECT,-25, 0, 50, 50);
  lArm.setFill(color(0));
  lArm.setStroke(color(0, 0, 0);
  
  
  // Add the child shapes to the parent group
  alien.addChild(head);
  alien.addChild(body);
  alien.addChild(rArm);
  alien.addChild(lArm);
}
