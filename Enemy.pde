class Enemy {
  float xPos;      
  float yPos;      
  float size;      
  float xDir;      
  float yDir;      
  float xSpeed;    
  float ySpeed;    
  color c;         

  
  Enemy(float newX, float newY, float newSize, float newXDir, float newYDir, 
         float newXSpeed, float newYSpeed, color newC) {
   
    xPos   = newX;
    yPos   = newY;
    size   = newSize;
    xDir   = newXDir;
    yDir   = newYDir;
    xSpeed = newXSpeed;
    ySpeed = newYSpeed;
    c      = newC;
  }

 
  void drawEnemy() {
    fill(c);    
    stroke(color(1,1,1,50));
    ellipse(xPos, yPos, size, size);    
  }

  
  void moveEnemy() {
    float radius = size / 2;   
    
    xPos = xPos + (xSpeed * xDir);
    yPos = yPos + (ySpeed * yDir);
    
   
    if (xPos > width - radius || xPos < radius) {
      xDir = xDir * -1;
    }
    if (yPos > height - radius || yPos < radius) {
      yDir = yDir * -1;
    }
  }
  
  void grow(){
    size = size + 1;
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