class Inventory {
  
  private int size;
  private ArrayList<Item> contents;
  
  Inventory() {
    size = 1;
    contents = new ArrayList<Item>();
  }
  
  public void setSize(int s) {
    size = s;
  }
  
  public int getSize() {
    return size;
  }
  
  public void put(Item i) {
    contents.add(i);
  }
}
