private String name;
private ArrayList<Button> buttons;

class Menu {
  
  Menu(String n) {
    name = n;
    buttons = new ArrayList<Button>();
  }
  
  public Button getClicked() {
    for(Button b : buttons) {
      if(b.mouseOver()) {
        return b;
      }
    }
    return null;
  }
  
  public Menu addButton(Button b) {
    buttons.add(b);
    return this;
  }
  
  public void render() {
    for(Button b : buttons) {
      b.render();
    }
  }
}

