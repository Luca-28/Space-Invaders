boolean leftPressed, rightPressed;  //The variables for tracking held keys (avoids windows' flawed key repetition detection)

import processing.sound.*;
SoundFile shoot, explosion;

Gunner Player;    //Establishes the player character as an instance of a gunner object (leaves room for local co-op)

Blockade[] Blockades = new Blockade[4];

Enemy[] Invaders = new Enemy[24];

Bullet[] FriendlyBullets = new Bullet[3]; 

void setup(){
  fullScreen();
  frameRate(120);
  noStroke();
  textSize(30);
  textAlign(CENTER);
  rectMode(CENTER);
  
  shoot = new SoundFile(this,"shoot.mp3");
  explosion = new SoundFile(this,"explosion.mp3");
  
  Player = new Gunner();  //Objects are only created now, as their constructors need the screen width and height from the 'fullScreen' function
  
  for(int i = 0; i < Blockades.length; i++){
    Blockades[i] = new Blockade((i+1) * width/5);
  }
  for(int x = 0; x < 6; x++){
    for(int y = 0; y < 4; y++){
      Invaders[(x + 6*y)] = new Enemy((x+1)*width/14 + width/4,(y+1)*80);
    }
  }
  for(int i = 0; i < FriendlyBullets.length; i++){
    FriendlyBullets[i] = new Bullet(-5);
  }
}


void draw(){
  clear();
  background(0);
  
  Player.display();
  Player.move();
  Player.timeSinceShot++;
  
  for(Blockade blockade: Blockades){
    blockade.display();
  }
  
  for(Enemy invader: Invaders){
    invader.display();
    invader.move();
  }
  
  for(Bullet bullet: FriendlyBullets){
    bullet.update();
    bullet.display();
    bullet.hitReg();
  }
}

void keyPressed(){
  if(keyCode == LEFT || key == 'a'){
    leftPressed = true;
  }
  
  if(keyCode == RIGHT ||key == 'd'){
    rightPressed = true;
  }
  
  if(key == ' '){
    Player.shoot();
  }
}

void keyReleased(){
  if(keyCode == LEFT ||key == 'a'){
    leftPressed = false;
  }
  
  if(keyCode == RIGHT ||key == 'd'){
    rightPressed = false;
  }
}
