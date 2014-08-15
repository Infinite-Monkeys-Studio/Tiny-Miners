private Material mat;
private PImage img;
private Location loc;

class Structure {
  Structure(Location l, Material m){
    loc = l;
    mat = m;
    //img = ;
  }
  
  public void render() {
    image(TinyMiners.texture.getTexture(mat.getImageName()), loc.getX(), loc.getY());
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
