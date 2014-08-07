class World {
  
  
  
  World() {
    
  }
  
  public World load(String name) {
    BufferedReader reader = createReader(name + ".wor");
    String line;
    boolean stop = false;
    
    while(stop) {
      try {
        line = reader.readLine();
      } catch (IOException e){
        e.printStackTrace();
        stop = true;
      }
      
      if (stop) {
        return newWorld(); 
      } else {
        String[] pieces = split(line, TAB);
        int x = int(pieces[0]);
        int y = int(pieces[1]);
        point(x, y);
      }
    }
  }
  
  public World newWorld() {
    
  }
}
