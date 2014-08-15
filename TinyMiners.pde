World world; //TODO move this from being a field

void setup() {
  size(800, 600);
  world = new World("first");
//  world.loadWorld();
}

void draw() {
  world.render();
}

void mouseClicked() {

}
