private float damage;
private Material mat;
private PImage img;
private Location loc;

class Structure {
  Structure(Location l, Material m){
    loc = l;
    mat = m;
    damage = m.getDamage();
    img = loadImage(mat.getImageName());
  }
  
  public void render() {
    image(img, loc.getX(), loc.getY());
    return;
  }
  
  public Structure setDamage(float d) {
    damage = d;
    return this;
  }
  
  public Material getMaterial() {
    return mat; 
  }
  
  public Structure setMaterial(Material m) {
    mat = m;
    return this; 
  }
}
