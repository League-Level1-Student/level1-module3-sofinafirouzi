
int birdX = 50;
int birdY = 350;
int birdYVelocity = 50;
int gravity = 1;

int pipeX = 50;
int upperPipeHeight = (int) random(100, 400);
int pipeGap = 70;
int lowerY = upperPipeHeight + pipeGap;
int lowerPipeTop = 500-lowerY;
int pipeWidth = 50;
//basically re do this with new variables to match bc i changed the pictures
PImage back;
PImage pipeBottom;
PImage pipeTop;
PImage bird;


void draw(){

   background(back);
            image (pipeBottom,250,375);
            image (pipeTop,250,-130);
            image (bird, 250, 300);
  
birdDown();

rect(xPipe, 0, 50, upperPipeHeight);
rect(xPipe, lowerY, 50, bottomPipe);
moveTube();
teleportPipes();
}//end draw
void teleportPipes(){
  xPipe=xPipe+500;
}
void moveTube(){
  xPipe = xPipe-15;
}

void setup(){
   back = loadImage("flappyBackground.jpg");
   back.resize(500,500);
            pipeBottom = loadImage("bottomPipe.png");
            pipeTop = loadImage("topPipe.png");
            bird = loadImage("bird.png");
            bird.resize(50,50);
  size(500,500);
  teleportPipes();
  
}//end setup

void flap(){
  y=y-birdYVelocity;
}
void birdDown(){
  y=y+gravity;
}
void mousePressed(){
  flap();
  intersectsPipes();
}
boolean intersectsPipes() { 
         if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+pipeWidth)){
            return true; }
        else if (birdY>lowerPipeTop && birdX > pipeX && birdX < (pipeX+pipeWidth)) {
            return true; }
        else { return false; }
}
