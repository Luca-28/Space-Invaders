class Enemy{
  float xPos, yPos, xSpeed = 3, ySpeed = 0;
  boolean active = true;
  
  Enemy(float tempXPos, float tempYPos){  //Constructor
    xPos = tempXPos;
    yPos = tempYPos;
  }
  
  void display(){
    if(active){
      rect(xPos,yPos,50,50);
    }
  }
  
  void move(){
    if(active){
      xPos += xSpeed;
      yPos += ySpeed;
    }
  }
  
  void shoot(){
    
  }
}
