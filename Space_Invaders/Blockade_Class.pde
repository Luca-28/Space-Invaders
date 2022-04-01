class Blockade{
  float xPos;
  int HP = 3;
  
  Blockade(float tempXPos){  //Constructor
    xPos = tempXPos;
  }
  
  void display(){
    if(HP > 0){
      rect(xPos,height-200,100,30);
    }
  }
}
