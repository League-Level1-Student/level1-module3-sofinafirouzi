     PImage back;
     PImage pipeBottom;
     PImage pipeTop;
     PImage bird;
int birdX = 250;
int birdY = 300;
int birdYVelocity = 50;
int gravity = 3;
int pipeX = 150;
int pipeGap = 30;
  int upperPipeHeight = (int) random(100, 400);
  int lowerY = upperPipeHeight + pipeGap;
  int lowerPipeTop = 500 - lowerY;
int pipeY = -130;



void setup(){
  size(500,500);
      back = loadImage("flappyBackground.jpg");
            pipeBottom = loadImage("bottomPipe.png");
            pipeTop = loadImage("topPipe.png");
            bird = loadImage("bird.png");
            bird.resize(50,50);
            back.resize(500,500);
            teleportPipe();
}//end setup

void draw(){
            background(back);
            image (pipeBottom,pipeX, lowerY);
            image (pipeTop, pipeX,pipeY);
            image (bird, birdX, birdY);
            gravityAffect();
            movePipe();
            teleportPipe();
             pipeTop.resize(70,upperPipeHeight);
            pipeBottom.resize(70, lowerPipeTop);
}//end draw
void gravityAffect(){
  birdY = birdY + gravity;
}//end gravity
void flap(){
  birdY = birdY - birdYVelocity;
}//set flap
void movePipe(){
  pipeX = pipeX - 5;
}//end move pipe
void teleportPipe(){
  if(pipeX==0){
pipeX =500;
  upperPipeHeight = (int) random(100, 400);
  lowerY = upperPipeHeight + pipeGap;
   lowerPipeTop = 500-lowerY;
  
  }
}//end teleport pipe
void mousePressed(){
  flap();
}//end mouse pressed
