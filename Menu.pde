private String name;
private ArrayList<Button> buttons;

class Menu {
  
  Menu(String n) {
    name = n;
  }
  
  public Menu addButton(Button b) {
    buttons.add(b);
    return this;
  }
  
  public void render() {
    for(int i = 0; buttons.size() < i; i++) {
      buttons.get(i).render();
    }
  }
}

