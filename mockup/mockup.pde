int[][] walls = new int[10][10];
PImage wall;
PImage floor;
PImage goblinWall;
PImage player;
PVector pLoc;
ArrayList<Character> keys = new ArrayList<Character>();
boolean collide = false;
float speed = 2;


void setup() {
  size(1000, 1000);
  pLoc = new PVector(350, 650, 1);
  wall = loadImage("wall.png");
  goblinWall = loadImage("goblin_wall.png");
  floor = loadImage("floor.png");
  player = loadImage("miner.png");
  player.resize(70, 0);
  loadMap();
}

void draw() {
  background(200);
  walls();
  pointer();
  control();
  player();
  physics();
}

/*
go through both x and y
then take the location add the players location to it
then render the ones on the screen
*/

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
      pLoc.y -= speed;
    }
    
    if(i == 's') {
      pLoc.y += speed;
    }
    
    if(i == 'a') {
      pLoc.x -= speed;
    }
    
    if(i == 'd') {
      pLoc.x += speed;
    }
  }
}

void player() {
  pushMatrix();
  translate(pLoc.x, pLoc.y);
  rotate(PI/pLoc.z);
  image(player, -player.width/2, -player.height/2);
  noFill();
  if(collide){
    stroke(255,0,0);
  } else {
    stroke(0,255,0);
  }
  ellipse(0, 0, 75, 75);
  popMatrix();
}

void physics() {
  PVector rot = new PVector(0, -37.5);
  int boom = 0;
  int iter = 20;
  PVector bounce = new PVector(0,0);
  for(int r = 0; r < iter; r++){
    PVector test = PVector.add(rot, pLoc);
    int[] sq = getRect(test);
    fill(0);
    ellipse(test.x, test.y, 2, 2);
    if(walls[sq[0]][sq[1]] != 0){
      PVector face = rot.get();
      face.rotate(PI);
      face.setMag(speed);
      bounce.add(face);
      boom++;
    }
    rot.rotate(PI * 2 /iter);
  }
  
  if(boom == 0){
    collide = false;
  } else {
    pLoc.add(bounce);
    collide = true;
  }
}

int[] getRect(PVector loc) {
  int x = floor(loc.x / 100);
  int y = floor(loc.y / 100);
  return new int[] {x, y};
}

PVector mouseLoc() {
 return new PVector(mouseX, mouseY);
}

void mousePressed() {
  int[] loc = getRect(mouseLoc());
  walls[loc[0]][loc[1]]++;
  if(walls[loc[0]][loc[1]] > 2) {
    walls[loc[0]][loc[1]] = 0;
  }
}

void pointer() {
  noFill();
  stroke(255,0,0);
  int[] loc = getRect(mouseLoc());
  int mx = loc[0] * 100;
  int my = loc[1] * 100;
  rect(mx, my, 100, 100);
}

void walls() {
  for(int x = 0; x < walls.length; x++) {
    for(int y = 0; y < walls.length; y++) {
      if(walls[x][y] == 0){
        image(floor, x*100, y*100);
      } 
      if(walls[x][y] == 1) {
        image(wall, x*100, y*100);
      }
      
      if(walls[x][y] == 2) {
        image(goblinWall, x*100, y*100);
      }
    }
  }
}

void saveMap() {
  PrintWriter output = createWriter("data/world.txt");
  String line = "";
  println("saving map!");
  for(int y = 0; y < walls.length; y++) {
    for(int x = 0; x < walls.length; x++) {
      line = line + walls[x][y];
      
      if(x != 9) {
        line = line + ",";
      }
    }
    println(line);
    output.println(line);
    line = "";
  }
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
      break; 
    } else {
      String[] pieces = split(line, ',');
      for(int x = 0; x < pieces.length; x++) {
        walls[x][y] = Integer.valueOf(pieces[x]);
      }   
      y++;
    }
  }
  try {
    reader.close();
  } catch (IOException e){
    e.printStackTrace();
  }
}
