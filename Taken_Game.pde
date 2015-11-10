PImage Liam; //Creates the Image of Liam Neeson
PImage Warehouse; //Creates the Image of the Warehouse
float LiamS; //Speed for Liam Neeson
float LiamY; //Tracks vertical positon of Liam Neeson
float LiamX; //Tracks the Horizontal position of Liam Neeson

//Simon Ormsby
//Purpose: To create a WASD based movement kind of landscape

//Setup for the Simulator
void setup() { 
  background(100, 100, 100);
  size(1000, 700);

  //Load the Image "Warehouse

  Warehouse = loadImage("Warehouse.jpeg"); 
  { //Loading the Warehouse Image

    // Load the image "Liam"
    Liam = loadImage ("Liam.png");
  } //Loading the Image Liam Neeson
}
// Create Liam Neeson
void draw() {
  image(Warehouse, 1, 1, 1000, 700);
  image(Liam, 800, 400, 150, 300);
}

void keyPressed() {
  if (key == 'a') {
    LiamS = 2;
  }
  if (key == 'd') {
    LiamS = -2;
  }
}