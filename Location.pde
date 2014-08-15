class Location {
  
  private PVector loc;
  private int depth;
    
  Location(PVector l, Integer d) {
    loc = l;
    depth = d;
  }
  
   Location(PVector l) {
    loc = l;
    depth = 0;
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
