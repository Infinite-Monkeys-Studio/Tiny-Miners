import processing.*;

enum Material {
  
  //Base Damage, image name
  FLOOR   (0, "floor"),
  STONE   (1, 50,  "stone"),
  GRAVEL  (2, 10,  "gravel"),
  PEBBLES (3, 20,  "pebbles"),
  SAND    (4, 2,   "sand"),
  GRANITE (5, 100, "granite");
  
  private final Float baseDamage;
  private final String imgName;
  private final int id;
  private static Material[] byId = new Material[6];
  
  private Material(int i, float d, String n) {
    id = i;
    baseDamage = d;
    imgName = n;
  }
  
  private Material(int i, String n) {
    id = i;
    imgName = n;
    baseDamage = null;
  }
  
  public String getImageName() {
    return imgName + ".png";
  }
  
  public float getDamage() {
    return baseDamage;
  }
  
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
