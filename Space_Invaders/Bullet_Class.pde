class Bullet{
  float xPos, yPos, ySpeed;
  boolean active = false;
  
  Bullet(float tempYSpeed){
    ySpeed = tempYSpeed;
  }
  
  void display(){
    if(active){
      circle(xPos,yPos,10);
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
    if(active){
      for(Blockade blockade: Blockades){
        if(blockade.HP > 0  &&  xPos > blockade.xPos-50 && xPos < blockade.xPos+50){
          blockade.HP--;
          active = false;
          explosion.play();
        }
      }
      if(ySpeed < 0){
        for(Enemy invader: Invaders){
          if(invader.active  &&  dist(xPos,yPos,invader.xPos,invader.yPos) < 50){
            invader.active = false;
            active = false;
            explosion.play();
          }
        }
      }
    }
  }
}
