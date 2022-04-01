class Enemy{
  float xPos, yPos, xSpeed = 3, ySpeed = 0;
  
  Enemy(float tempXPos, float tempYPos){  //Constructor
    xPos = tempXPos;
    yPos = tempYPos;
  }
  
  void display(){
    rect(xPos,yPos,5,5);
  }
  
  void move(){
    xPos += xSpeed;
    yPos += ySpeed;
    
  }
  
  void shoot(){
    
  }
}
