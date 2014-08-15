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
  private final String color;
  
  Material(float d, String n) {
    baseDamage = d;
    imgName = n;
    color = c;
  }
  
  public String getImageName() {
    return imgName + ".png";
  }
  
  public float getDamage() {
    return baseDamage;
  }
}
