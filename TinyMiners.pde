public World world; //TODO move this from being a field
public static Texture texture;

void setup() {
  size(1000, 1000);
  texture = new Texture();
  world = new World("first");
  world.loadWorld();
}

void draw() {
  background(255);
  world.render();
//  for(int x = 0; x < 20; x++) {
//    for(int y = 0; y < 20; y++) {
//      PImage img = texture.getTexture("floor.png");
//      img.resize(50,0);
//      image(img, x *50, y*50);
//    }
//  }
}

void mouseClicked() {

}
