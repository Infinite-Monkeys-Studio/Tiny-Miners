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
  
  boolean mouseOver() {
    
    return 
      mouseX > loc.x - size.x/2 &&
      mouseX < loc.x + size.x/2 &&
      mouseY > loc.y - size.y/2 &&
      mouseY < loc.y + size.y/2;
      
  }
  
  Button setColor(color c) {
    col = c;
    return this;
  }
  
  color getColor() {
    return col;
  }
  
  Button setLoc(PVector l) {
    loc = l;
    return this;
  }
  
  PVector getLoc() {
    return loc;
  }
  
  Button setSize(PVector s) {
    size = s;
    return this;
  }
  
  PVector getSize() {
    return size;
  }
  
  String getText() {
    return text;
  }
}
