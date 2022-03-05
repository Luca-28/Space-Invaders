boolean leftPressed, rightPressed;  //The variables for tracking held keys (avoids windows' flawed key repetition detection)
Gunner Player;


void setup(){
  fullScreen();
  frameRate(120);
  
  textSize(50);
  textAlign(CENTER);
  
  rectMode(CENTER);
  
  
  Player = new Gunner();
}


void draw(){
  clear();
  background(0);
  
  Player.display();
  
  drawHUD();
}

void keyPressed(){
  if(key == 'a' || keyCode == LEFT){
    
  }
  
  
}

void keyReleased(){
  
}


void drawHUD(){
  
}
