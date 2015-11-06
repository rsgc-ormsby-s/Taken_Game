PImage p1;

//Simon Ormsby
//Purpose: To create a WASD based movement kind of landscape

//Setup for the Simulator
void setup() { 
  background(0, 0, 0); 
  size(700, 500);

  // Load the image
  p1 = loadImage ("Liam.png");
}
// Create Thresh
void draw() {
  image(p1, 1, 300, 200, 200);
}