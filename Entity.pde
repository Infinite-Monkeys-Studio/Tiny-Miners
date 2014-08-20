class Entity {
  
  public Location loc;
  public Inventory pockets;
  
  Entity() {
    
  }
  
  public Location getLocation() {
    return loc;
  }
  
  public void setLocation(Location l) {
    loc = l;
  }
  
  public Inventory getInventory() {
    return pockets;
  }
  
  public void setInventory(Inventory i) {
    pockets = i;
  }
}
