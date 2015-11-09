//declare variables
float []x= new float [30];
float []y= new float [30];
float []velX= new float [30];
float []velY= new float [30];
float []diam= new float [30];
float []a= new float [30];

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
int i=0;
for(i=0; i<30; i++){
  
}
 
}

void draw() {
  //draw background to cover previous frame
  background(0);

 velY = a+velY;

  //draw ball
  ellipse(x[30], y[30], diam[30], diam[30]);

  //add velocity to position

  y += velY;

  //bounce ball if it hits walls
 
  if (y  >= height) {
    y=height;
    velY = -abs(velY);
  } 
}