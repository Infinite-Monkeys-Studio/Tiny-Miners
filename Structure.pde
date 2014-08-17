class Structure {
  
  private Material mat;
  private PImage img;
  private Location loc;
  public PVector location;
  
  Structure(Location l, Material m){
    loc = l;
    mat = m;
    img = TinyMiners.texture.getTexture(mat.getImageName());
    location = new PVector(0,0);
  }
  
  public void render() {
    float x = location.x;
    float y = location.y;
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
