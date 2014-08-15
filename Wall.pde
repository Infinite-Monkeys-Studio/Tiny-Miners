private Location loc;
private float damage;
private Material mat;
private PImage img;

class Wall extends VoxelThing{
  
  Wall(Location l, Material m) {
    loc = l;
    mat = m;
    damage = m.getDamage();
    img = loadImage(mat.getImageName());
  }
  
  public void render() {
    image(img, loc.x, loc.y);
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
