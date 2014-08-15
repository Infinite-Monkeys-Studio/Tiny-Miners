class World {
  String name;
  Structure[][] structures;
  
  World(String n) {
    name = n;
    structures = new Structure[20][20];
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
        structures[x][y].setMaterial(Material.getMaterial(Integer.valueOf(pieces[x])));
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
    for(int y = 0; y < structures.length; y++) {
      for(int x = 0; x < structures.length; x++) {
        line = line + structures[x][y].getMaterial().getItemID();
        
        if(x != structures.length) {
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
