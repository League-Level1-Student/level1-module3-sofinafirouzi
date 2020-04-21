
 PImage back;
 PImage carLeft;
 PImage carRight;
 PImage frog;
 int frogX = 300;
 int frogY = 530;
 
 Car car = new Car(50,100,100, 50);
 Car carTwo = new Car(100, 50, 150, 100);
    void setup() {
      size(844,600);
        back = loadImage("froggerBackground.png");
        carLeft = loadImage("carLeft.png");
        carLeft.resize(160,100);
        carRight = loadImage("carRight.png");
        carRight.resize(160,100);
        frog = loadImage("frog.png");
        frog.resize(75,75);
    }
    void draw() {
        background(back);
        image (carLeft,250,360);
        image (carRight,250, 210);
        image (frog, frogX , frogY );
        car.display();
        car.moveCarLeft();
        car.display();
        carTwo.display();
        carTwo.moveCarRight();
        carTwo.display();
        stayOnCanvas();
    }

void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            frogY = frogY - 50;
       
        }
        else if(keyCode == DOWN)
        {
             frogY = frogY + 50;
        }
        else if(keyCode == RIGHT)
        {
            frogX = frogX + 50;
        }
        else if(keyCode == LEFT)
        {
            frogX = frogX - 50;
        }
    }
}

void stayOnCanvas(){
 if(frogX==0){
   frogX = 844;
 }
 if(frogX == 844){
   frogX = 0;
 }
}

boolean intersects(Car car) {
 if ((frogY > car.getY() && frogY < car.getY()+50) &&
                (frogX > car.getX() && frogX < car.getX()+car.getSize())) {
   return true;
  }
 else  {
  return false;
 }
}
public class Car{
  int carX =0;
  int carY = 0;
  int carSize = 0;
  int carSpeed = 0;
  
  Car(int carX, int carY, int carSize, int carSpeed){
    this.carX =carX;
    this.carY = carY;
    this.carSize = carSize;
    this.carSpeed = carSpeed;
    
  }
  public void moveCarLeft(){
  carX = carX - carSpeed;
  if(carX==0){
    carX = 844;
}
  
}//end move left

public void display()
  {
loadImage("carRight.png");
  }//end display
  
  public void moveCarRight(){
  carX = carX + carSpeed;
  if(carX==844){
    carX = 0;
}
  
}//move right

int getX(){
return carX;
}//end x
int getY(){
 return carY;
}//end y
int getSize(){
 return carSize;
}

}
