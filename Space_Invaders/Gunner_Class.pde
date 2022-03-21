class Gunner{
  float xPos;
  int timeSinceShot;
  
  Gunner(){  //Constructor
    xPos = width/2;
    timeSinceShot = 0;
  }
  
  void display(){
    rect(xPos,height-100,100,50);
    rect(xPos,height-120,20,80);
  }
  
  void move(){
    if(rightPressed && xPos < width-50){
      xPos += 5;
    }
    
    if(leftPressed && xPos > 50){
      xPos -= 5;
    }
  }
  
  void shoot(){
      int availableBullet = -1;
      for(int i = 0; i < FriendlyBullets.length; i++){
        if(FriendlyBullets[i].active == false){
          availableBullet = i;
        }
      }
      if(availableBullet != -1 && timeSinceShot > 20){  
        shoot.play();
        FriendlyBullets[availableBullet].xPos = xPos;
        FriendlyBullets[availableBullet].yPos = height-150;
        FriendlyBullets[availableBullet].active = true;
        timeSinceShot = 0;
      }
  }
}
