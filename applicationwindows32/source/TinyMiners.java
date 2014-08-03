import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class TinyMiners extends PApplet {


public void setup() {
  size(800, 600);
}

public void draw() {
  textSize(100);
  fill(0, 102, 153, 51);
  textAlign(CENTER, BOTTOM);
  text("Tiny Miners", width/2, 150);
  textSize(102);
  fill(255);
  text("Tiny Miners", width/2, 150);
  
  PImage m = miner();
  image(m, width/2 - m.width/2, height/2 - m.height/2);
}

public PImage miner() {
  return loadImage("miner.png");
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "TinyMiners" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
