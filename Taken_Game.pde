PImage Liam; //Creates the Image of Liam Neeson
PImage Warehouse; //Creates the Image of the Warehouse
PImage Kim; //Creates the Image of Kim
float LiamS1; //Speed for Liam Neeson
float LiamS2; // Speed for Jump of Liam Neeson
float LiamA; // Tracks Acceleration of Jump for Liam Neeson 
float LiamY; //Tracks vertical positon of Liam Neeson
float LiamX; //Tracks the Horizontal position of Liam Neeson
float gravity; // tracks gravity

//Simon Ormsby
//Purpose: To create a WASD based platformer based on the movie Taken 1, 2 and 3

//Setup for the Simulator
void setup() { 
  background(100, 100, 100);
  size(1500, 700);

  //Setting Initial Values
  LiamY = 400;
  LiamX = 800;
  LiamS1 = 0;
  LiamA = 0;
  LiamS2 = 0; 
  gravity = 0.005;

  //Loading Images
  Warehouse = loadImage("Warehouse.jpeg"); //Loading the Warehouse Image
  Liam = loadImage ("Liam.png"); //Loading the Image Liam Neeson
  Kim = loadImage ("Kim.png"); //Loading the Image Kim

  //Make Liam Neeson Move
  //Create the Appearence of Liam Neeson Moving
  LiamX = LiamX + LiamS1;
}
// Create Liam Neeson
void draw() {
  //Drawing the Pictures
  image(Warehouse, 1, 1, 1000, 700); //Creates Warehouse Background
  image(Liam, LiamX, LiamY, 150, 300); //Creates Liam Neeson
  image(Kim, 100, 25, 150, 300); 

  //Creating the Platforms
  strokeWeight(10);
  stroke(200, 0, 0);
  line(100, 300, 200, 300);
  line(200, 350, 300, 350);
  line(300, 400, 400, 400);
  line(400, 450, 500, 450);
  line(500, 500, 600, 500); 
  line(600, 550, 700, 550);

  //Make Liam Neeson Move
  //Create the Appearence of Liam Neeson Moving
  LiamX = LiamX + LiamS1;

  //Make Liam Jump
  LiamA = LiamA + gravity;
  LiamS2 = LiamS2 + LiamA; // change speed based on acceleartion
  LiamY = LiamY + LiamS2; // change location based on speed

  //Make Liam not Fall into Ground
  if (LiamY > 400) { //bottom of the screen
    LiamY = 400;
    LiamA = 0;
    LiamS2 = 0;
  }
}

void keyPressed() {
  if (key == 'a') {
    LiamS1 = -20;
  }
  if (key == 'd') {
    LiamS1 = 20;
  }
  if (key == 'w') {
    if (LiamY >= 400) {
      LiamA = -0.1;
    }
  }
}