private Location loc;
private float damage;
private Material mat;

class Wall extends VoxelThing{
  
  Wall(Location l, Material m) {
    loc = l;
    mat = m;
    damage = m.getDamage();
  }
  
  public void render() {
    pushMatrix();
    fill(mat.getColor());
    rect(loc.getX(), loc.getY(), 100, 100);
    popMatrix();
    return;
  }
  
  public Wall setDamage(float d) {
    damage = d;
    return this;
  }
  
  public Material getMaterial() {
    return mat; 
  }
  
  public Wall setMaterial(Material m) {
    mat = m;
    return this; 
  }
}
