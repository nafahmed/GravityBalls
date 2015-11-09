//declare variables
float x, y, velX, velY, diam, a;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = 0;
  diam = 80;
a=1;
 
}

void draw() {
  //draw background to cover previous frame
  background(0);

 velY = a+velY;

  //draw ball
  ellipse(x, y, diam, diam);

  //add velocity to position

  y += velY;

  //bounce ball if it hits walls
 
  if (y  >= height) {
    y=height;
    velY = -abs(velY);
  } 
}