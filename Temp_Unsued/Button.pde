class Button {
 
  private String text;
  private color col;
  private PVector loc;
  private PVector size;
  
  Button(String t) {
    text = t;
  }
  
  public void render() {
    pushMatrix();
    fill(col);
    rect(loc.x - size.x/2, loc.y - size.y/2, size.x, size.y);
    fill(255);
    textSize(size.y - 10);
    textAlign(CENTER, CENTER);
    text(text, loc.x , loc.y);
    popMatrix();
  }
  
  public boolean mouseOver() {
    
    return 
      mouseX > loc.x - size.x/2 &&
      mouseX < loc.x + size.x/2 &&
      mouseY > loc.y - size.y/2 &&
      mouseY < loc.y + size.y/2;
      
  }
  
  public Button setColor(color c) {
    col = c;
    return this;
  }
  
  public color getColor() {
    return col;
  }
  
  public Button setLoc(PVector l) {
    loc = l;
    return this;
  }
  
  public PVector getLoc() {
    return loc;
  }
  
  public Button setSize(PVector s) {
    size = s;
    return this;
  }
  
  public PVector getSize() {
    return size;
  }
  
  public String getText() {
    return text;
  }
}
