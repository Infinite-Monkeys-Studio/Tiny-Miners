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
    PImage img = loadImage(mat.getImage());
    image(img, loc.getX(), loc.getY());
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
