class World {
  String name;
  Wall[][] walls;
  
  World(String n) {
    name = n;
    walls = new Wall[20][20];
  }
   
  public void loadWorld() {
  BufferedReader reader = createReader(name);
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
  
  public void saveWorld() {
    PrintWriter output = createWriter("data/world.txt");
    String line = "";
    println("saving map!");
    for(int y = 0; y < walls.length; y++) {
      for(int x = 0; x < walls.length; x++) {
        line = line + walls[x][y].getMaterial().getItemID();
        
        if(x != walls.length) {
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
}
