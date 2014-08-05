private Menu title;

class Title {
  
  Title() {
    Button startButton = new Button("Start").setColor(#A58F8F).setLoc(new PVector(400, 400)).setSize(new PVector(200, 80));
    Button exitButton = new Button("Exit").setColor(#A58F8F).setLoc(new PVector(400, 490)).setSize(new PVector(200, 80));
    title = new Menu("Start").addButton(startButton).addButton(exitButton);
  }
  
  public void render() {
    pushMatrix();
    textSize(100);
    fill(0, 102, 153, 51);
    textAlign(CENTER, BOTTOM);
    text("Tiny Miners", width/2, 150);
    textSize(102);
    fill(255);
    text("Tiny Miners", width/2, 150);
    popMatrix();
    
    PImage m = loadImage("miner.png");
    m.resize(0, 200);
    image(m, 400 - m.width/2, 250 - m.height/2);
  
    start.render();
  }
  
  public Menu getMenu() {
    return title;
  }
}
