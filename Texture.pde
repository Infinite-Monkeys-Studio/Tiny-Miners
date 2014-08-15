class Texture {
  
  private HashMap<String, PImage> textures;
  
  public Texture() {
    textures = new HashMap<String, PImage>();
  }
  
  public PImage getTexture(String fileName) {
    if(textures.containsKey(fileName)){
      return textures.get(fileName);
    } else {
      PImage img = loadImage(fileName);
      textures.put(fileName, img);
      return img;
    }
  }
}
