

//CREATE A NEW BRANCH and see if you can get the balls in your code to recognize when they are in contact with your mouse cursor.
//Some hints:
//* There is a distance formula. You can find it in the reference
//* Do a quick sketch to see how the distance between a point and the center of a circle relate to the size of the circle
//* Have a simple way of displaying whether the mouse is in contact with a circle, at least at first. Changing colors or printing a word to the console is a good way to approach this.





//declare variables
int count = 30;
float [] x= new float [count];
float [] y= new float [count];
float [] velY= new float [count];
float [] diam= new float [count];
float [] a= new float [count];

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
int i=0;

  while(i<count){
    y[i]=height/2;
    x[i]= random(0,width);
    diam[i]= random(20,40);
    velY[i]= random(5,10);
    a[i]= random(0.5, 5);
    
    i++;
  }

 
}

void draw() {
 background(0);
 int i=0;
 while(i<count){
  ellipse(x[i], y[i], diam[i], diam[i]);
  
 if(dist(x[i], y[i], mouseX, mouseY) < diam[i]/2){
  diam[i]= diam[i]+3; 
 }

velY[i] = velY[i] + a[i];
y[i] += velY[i];

if(y[i]>=height){
 velY[i]=-abs(velY[i]); 
y[i]=height;
}
i++;
}
}