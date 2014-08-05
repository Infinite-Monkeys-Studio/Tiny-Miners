import processing.*;

enum Material {
  
  //Base Damage, image name
  STONE   (50,  "stone"),
  GRAVEL  (10,  "gravel"),
  PEBBLES (20,  "pebbles"),
  SAND    (2,   "sand"),
  GRANITE  (100, "granite");
  
  private final Float baseDamage;
  private final String imgName;
  
  Material(float d, String n) {
    baseDamage = d;
    imgName = n;
  }
  
  public String getImage() {
    return imgName + ".png";
  }
  
  public float getDamage() {
    return baseDamage;
  }
}
