class Enemy{
  int xPos, yPos, xSpeed = 1, ySpeed = 0;
  boolean active = true;
  
  Enemy(int tempXPos, int tempYPos){  //Constructor
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
      if(ySpeed == 0){
        xPos += xSpeed;
      } else {
        yPos += ySpeed;
        println(yPos % 50);
        if(yPos % 50 == 0){
        for(Enemy invader: Invaders){
          invader.xSpeed *= -1;
          invader.ySpeed = 0;
        }
      }
      }
      
      if(xPos > width || xPos < 0){
        for(Enemy invader: Invaders){
          //invader.xPos += int(1 - (xPos / (width/2)));
          invader.ySpeed = 1;
        }
      }
    }
  }
  
  void shoot(){
    
  }
}
