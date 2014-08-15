private Material mat;
private PImage img;
private Location loc;

class Structure {
  Structure(Location l, Material m){
    loc = l;
    mat = m;
    img = TinyMiners.texture.getTexture(mat.getImageName());
  }
  
  public void render() {
    float x = loc.getX();
    float y = loc.getY();
    image(img, x, y);
    return;
  }
   
  public Material getMaterial() {
    return mat; 
  }
  
  public Structure setMaterial(Material m) {
    mat = m;
    return this; 
  }
}
