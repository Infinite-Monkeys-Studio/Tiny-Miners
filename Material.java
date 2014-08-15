import processing.core.PImage;

enum Material {
  
  // Item ID, image name
  FLOOR   (0, "floor"),
  STONE   (1, "stone"),
  GRAVEL  (2, "gravel"),
  PEBBLES (3, "pebbles"),
  SAND    (4, "sand"),
  GRANITE (5, "granite");
  
//  private final Float baseDamage;
  private final String imgName;
  private final int id;
  private static Material[] byId = new Material[6];
  private PImage img;
  
  private Material(int i, String n) {
    id = i;
    imgName = n;
  }
  
  public String getImageName() {
    return imgName + ".png";
  }
  
//  public float getDamage() {
//    return baseDamage;
//  }
  
  public int getItemID() {
    return id;
  }
  
  static {
    for(Material material : values()) {
      if(byId.length > material.id) {
        byId[material.id] = material;
      }
    }
  }
  
  public static Material getMaterial(int id) {
    return byId[id];
  }
}
