class Food{
  
  float xPos;
  float yPos;
  float size;
  color c;
  
  Food(float newX, float newY, float newSize, color newC){
    xPos       = newX;
    yPos       = newY;
    size    = newSize;
    c           = newC;
  }
  
  void drawFood(){
    fill(c);
    noStroke();
    ellipse(xPos, yPos, size, size);
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