class Player{
  
  float xPos;
  float yPos;
  float size;
  color c;
  float speed=2.5;

  
  Player(float newX, float newY, float newSize, color newC){
    xPos    = newX;
    yPos    = newY;
    size    = newSize;
    c       = newC;
  }
  
  void movePlayer(){
     followConstantSpeed();
  }
  
  void drawPlayer(){
    fill(c);
    noStroke();
    ellipse(xPos, yPos, size, size);
  }
  
  void followConstantSpeed(){
  if(dist(xPos,yPos,mouseX,mouseY)<5){
    xPos=mouseX;
    yPos=mouseY;
  }else{
    xPos=xPos+(int)((mouseX-xPos)/dist(xPos,yPos,mouseX,mouseY)*speed);
    yPos=yPos+(int)((mouseY-yPos)/dist(xPos,yPos,mouseX,mouseY)*speed);
  }
}
  
  void growFood(){
    size = size + 1;
  }
  
  void growEnemy(){
    size = size + 20;
  }
  
  float getXPos(){
    return xPos;
  }
  
  float getYPos(){
    return yPos;
  }
  
  float getSize(){
    return size;
  }
}