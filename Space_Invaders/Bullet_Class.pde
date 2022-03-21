class Bullet{
  float xPos, yPos, ySpeed;
  boolean active = false;
  
  Bullet(float tempYSpeed){
    ySpeed = tempYSpeed;
  }
  
  void display(){
    if(active){
      circle(xPos,yPos,10);
    } else {
      circle(175,-10,10);
    }
  }
  
  void update(){
    if(active){
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
