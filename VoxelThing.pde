class VoxelThing {
  
  private Location loc;
  
  public VoxelThing(Location l) {
    loc = l;
    inti();
  }
  
  public abstract void inti();
}
