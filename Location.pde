class Location {
  
  private PVector loc;
  private int depth;
    
  Location(PVector l, int d) {
    loc = l;
    if(d == null){
      depth = 0;
    } else {
      depth = d
    }
  }
  
  public Location setLocation(PVector l) {
    loc = l;
    return this;
  }
  
  public Location setDepth(int d) {
    depth = d;
    return this;
  }
  
  public float getX() {
    return loc.x;
  }
  
  public float getY() {
    return loc.y;
  }
  
  public int getDepth() {
    return depth;
  }
}
