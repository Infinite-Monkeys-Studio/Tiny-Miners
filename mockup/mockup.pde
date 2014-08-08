boolean[][] walls = new boolean[10][10];
PImage wall;
PImage floor;
PImage player;
PVector pLoc;
ArrayList<Character> keys = new ArrayList<Character>();

void setup() {
  size(1000, 1000);
  pLoc = new PVector(350, 650, 1);
  wall = loadImage("wall.png");
  floor = loadImage("floor.png");
  player = loadImage("miner.png");
  player.resize(50, 0);
  loadMap();
}

void draw() {
  background(200);
  walls();
  pointer();
  control();
  physics();
  player(); 
}
/*
go through both x and y
then take the location add the players location to it
then render the ones on the screen
*/
void mouseClicked() {
  int x = floor(mouseX / 100);
  int y = floor(mouseY / 100);
  walls[x][y] = !walls[x][y];
}

void physics() {}

void keyTyped() {
  if(key == 'p') {
    saveMap();
  }
}

void keyPressed() {
  if(!keys.contains(key)) {
    keys.add(key);
  }
}

void keyReleased() {
  if(keys.contains(key)) {
    keys.remove(keys.indexOf(key));
  }
}

void control() {
  ArrayList<Character> temp = keys;
  for(char i : temp) {
    if(i == 'w') {
      pLoc.y--;
    }
    
    if(i == 's') {
      pLoc.y++;
    }
    
    if(i == 'a') {
      pLoc.x--;
    }
    
    if(i == 'd') {
      pLoc.x++;
    }
  }
}

void player() {
  pushMatrix();
  translate(pLoc.x, pLoc.y);
  rotate(PI/pLoc.z);
  image(player, 0, 0);
  noFill();
  stroke(255,0,0);
  ellipse(25, 25, 55, 55);
  popMatrix();
}

void pointer() {
  noFill();
  stroke(255,0,0);
  int mx = floor(mouseX / 100) * 100;
  int my = floor(mouseY / 100) * 100;
  rect(mx, my, 100, 100);
}

void walls() {
  for(int x = 0; x < walls.length; x++) {
    for(int y = 0; y < walls.length; y++) {
      if(walls[x][y]){
        image(wall, x*100, y*100);
      } else {
        image(floor, x*100, y*100);
      }
    }
  }
}

void saveMap() {
  PrintWriter output = createWriter("new_world.txt");
  String line = "";
  println("saving map!");
  for(int y = 0; y < walls.length; y++) {
    for(int x = 0; x < walls.length; x++) {
      if(walls[x][y]){
        line = line + "1";
      } else {
        line = line + "0";
      }
      
      if(x != 9) {
        line = line + ",";
      }
    }
    println(line);
    output.println(line);
    line = "";
  }
  output.flush();
  output.close();
  println("saved!");
}

void loadMap() {
  BufferedReader reader = createReader("world.txt");
  String line = null;
  int y = 0;
  
  while(true){
    try {
      line = reader.readLine();
    } catch (IOException e){
      e.printStackTrace();
      line = null;
    }
    
    if (line == null) {
      return; 
    } else {
      String[] pieces = split(line, ',');
      for(int x = 0; x < pieces.length; x++) {
        if(Integer.valueOf(pieces[x]) == 1) {
          walls[x][y] = true;
        } else {
          walls[x][y] = false;
        }
      }   
      y++;
    }
  }
}
