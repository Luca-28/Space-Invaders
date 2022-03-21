class Blockade{
  float xPos;
  int HP = 5;
  
  Blockade(float tempXPos){  //Constructor
    xPos = tempXPos;
  }
  
  
  void display(){
    if(HP > 0){
      rect(xPos,height-200,100,30);
      text(HP,xPos,height-100);
    }
  }
}
