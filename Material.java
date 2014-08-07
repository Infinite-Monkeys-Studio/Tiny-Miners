import processing.*;

enum Material {
  
  //Base Damage, image name
  STONE   (50,  "stone", "#AAAAAA"),
  GRAVEL  (10,  "gravel", "#A58864"),
  PEBBLES (20,  "pebbles", "#656C83"),
  SAND    (2,   "sand", "#F5F3B7"),
  GRANITE  (100, "granite", "#BC8E8E");
  
  private final Float baseDamage;
  private final String imgName;
  private final String color;
  
  Material(float d, String n, String c) {
    baseDamage = d;
    imgName = n;
    color = c;
  }
  
  public String getImage() {
    return imgName + ".png";
  }
  
  public float getDamage() {
    return baseDamage;
  }
  
  public String getColor() {
    return color;
  }
}
