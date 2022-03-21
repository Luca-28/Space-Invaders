class Bullet{
  float xPos, yPos, xSpeed, ySpeed, inactiveX, inactiveY;
  boolean active = false;
  
  Bullet(float tempInactiveX,float tempInactiveY, float tempXSpeed, float tempYSpeed){
    inactiveX = tempInactiveX;
    inactiveY = tempInactiveY;
    xSpeed = tempXSpeed;
    ySpeed = tempYSpeed;
    
  }
  void display(){
    if(active){
      circle(xPos,yPos,10);
    } else {
      circle(inactiveX,inactiveY,10);
    }
  }
  
  void update(){
    if(active){
      xPos += xSpeed;
      yPos += ySpeed;
      
      if(yPos < 0 || yPos > height  || xPos < 0 || xPos > width){
        active = false;
      }
    }
  }
  
  void hitReg(){
    for(Blockade blockade: Blockades){
      if(active && blockade.HP > 0  &&  xPos > blockade.xPos-50 && xPos < blockade.xPos+50){
        blockade.HP--;
        active = false;
        explosion.play();
      }
    }
  }
}
