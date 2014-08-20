public World world; //TODO move this from being a field
public static Texture texture;
public PVector screen;

void setup() {
  size(800, 600);
  screen = new PVector(0,0);
  texture = new Texture();
  world = new World("first");
  world.loadWorld();
  
}

void draw() {
  background(255);
  translate(screen.x, screen.y);
  world.render(); 
}

void keyPressed() {
  
  if(key == CODED) {
    if(keyCode == UP) {
      screen.add(0, 2, 0);
    }
    
    if(keyCode == DOWN) {
      screen.add(0, -2, 0);
    }
    
    if(keyCode == RIGHT) {
      screen.add(-2, 0, 0);
    }
    
    if(keyCode == LEFT) {
      screen.add(2, 0, 0);
    }
  }
}
