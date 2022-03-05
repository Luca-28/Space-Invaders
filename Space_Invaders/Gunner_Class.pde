class Gunner{
  float xPos;
  int timeSinceShot;
  
  Gunner(){
    xPos = width/2;
    timeSinceShot = 100;
  }
  
  void display(){
    rect(xPos,height-100,100,50);
  }
  
  void move(){
    
  }
  
  void shoot(){
    
  }
}
