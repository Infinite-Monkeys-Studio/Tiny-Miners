public World world; //TODO move this from being a field
public static Texture texture;

void setup() {
  size(800, 600);
  texture = new Texture();
  world = new World("first");
  world.loadWorld();
}

void draw() {
  world.render();
}

void mouseClicked() {

}
