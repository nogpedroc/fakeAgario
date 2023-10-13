Enemy[] enemyList;
Food[] foodList;
Player myPlayer;

void setup(){
  background(255);
  size(1440, 855);
  frameRate(240);
  
  foodList = new Food[400];
  
  for(int i = 0; i<400; i++){
    foodList[i]=new Food(random(8, 1432), random(8, 847), 10, 
        color(random(0, 255), random(0, 255), random(0, 255)));
  }
  myPlayer = new Player(width / 2, height / 2, 50, color(random(0, 255), random(0, 255), random(0, 255)));
  
  enemyList= new Enemy[5];
  
  for(int i= 0; i<5;i=i+1){
  }
  
  for(int i = 0;i<enemyList.length;i++){
    enemyList[i]=new Enemy(random(0, 1440), random(0,855), random(40,100), random(-1,1), random(-1,1), 1.5, 1.5, color(random(0, 255), random(0, 255), random(0, 255)));
  }
}

void draw(){
      background(0);
      for(int i = 0; i<400; i++){
        if(foodList[i]!=null){
     
        if( isCollision(myPlayer,foodList[i]) == true){ 
          foodList[i] = null;
          myPlayer.growFood();
        }
        }
        if(foodList[i]!=null){
          foodList[i].drawFood();
        }
        
  }
  myPlayer.drawPlayer();
  myPlayer.movePlayer();


for(int i = 0; i<5; i++){
  for(int j=0; j<400; j++){
  if(foodList[j]!=null){
      if(enemyList[i] != null){
     if(isCollision(enemyList[i],foodList[j]) == true){ 
        foodList[j] = null;
        enemyList[i].grow();
      }
      }
  }
     if(foodList[j]!=null){
      }
    }
    
  if(enemyList[i] != null){
   if(isCollision(myPlayer,enemyList[i]) == true && myPlayer.size > enemyList[i].size){
     enemyList[i] = null;
     myPlayer.growEnemy();
   }
  }
    if(enemyList[i] != null){
   enemyList[i].drawEnemy();
   enemyList[i].moveEnemy();  
    }
      if(enemyList[i] != null){
   if(isCollision(myPlayer,enemyList[i]) == true && myPlayer.size < enemyList[i].size){
     noLoop();
     background(0);
     break;
   }
  }
}
}

boolean isCollision(Player myPlayer, Food myFood){
  float xPos1=myPlayer.getXPos();
  float xPos2=myFood.getXPos();
  float yPos1=myPlayer.getYPos();
  float yPos2=myFood.getYPos();
  float size1=myPlayer.getSize();
  float size2=myFood.getSize();
  float distance= dist(xPos1, yPos1, xPos2, yPos2);
  
  if(size2>size1){
    float closestX=xPos1+(xPos2-xPos1)*size1/2/distance;
    float closestY=yPos1+(yPos2-yPos1)*size1/2/distance;
        
       
    if(pow(size2/2, 2)>pow(closestX-xPos2, 2)+pow(closestY- yPos2,2)){
      return true;
    }else{
      return false;
    }
  }else{
    float closestX=xPos2+(xPos1-xPos2)*size2/2/distance;
    float closestY=yPos2+(yPos1-yPos2)*size2/2/distance;
    
    if(pow(size1/2, 2)>pow(closestX-xPos1,2)+pow(closestY-yPos1, 2)){
      return true;
    }else{
      return false;
    }
  }
}

boolean isCollision(Enemy myEnemy, Food myFood){
  float xPos1=myEnemy.getXPos();
  float xPos2=myFood.getXPos();
  float yPos1=myEnemy.getYPos();
  float yPos2=myFood.getYPos();
  float size1=myEnemy.getSize();
  float size2=myFood.getSize();
  float distance= dist(xPos1, yPos1, xPos2, yPos2);
  
  if(size2>size1){
    float closestX=xPos1+(xPos2-xPos1)*size1/2/distance;
    float closestY=yPos1+(yPos2-yPos1)*size1/2/distance;
        
       
    if(pow(size2/2, 2)>pow(closestX-xPos2, 2)+pow(closestY- yPos2,2)){
      return true;
    }else{
      return false;
    }
  }else{
    float closestX=xPos2+(xPos1-xPos2)*size2/2/distance;
    float closestY=yPos2+(yPos1-yPos2)*size2/2/distance;
    
    if(pow(size1/2, 2)>pow(closestX-xPos1,2)+pow(closestY-yPos1, 2)){
      return true;
    }else{
      return false;
    }
  }
}

boolean isCollision(Player myPlayer, Enemy myEnemy){
  float xPos1=myPlayer.getXPos();
  float xPos2=myEnemy.getXPos();
  float yPos1=myPlayer.getYPos();
  float yPos2=myEnemy.getYPos();
  float size1=myPlayer.getSize();
  float size2=myEnemy.getSize();
  float distance= dist(xPos1, yPos1, xPos2, yPos2);
  
  if(size2>size1){
    float closestX=xPos1+(xPos2-xPos1)*size1/2/distance;
    float closestY=yPos1+(yPos2-yPos1)*size1/2/distance;
        
       
    if(pow(size2/2, 2)>pow(closestX-xPos2, 2)+pow(closestY- yPos2,2)){
      return true;
    }else{
      return false;
    }
  }else{
    float closestX=xPos2+(xPos1-xPos2)*size2/2/distance;
    float closestY=yPos2+(yPos1-yPos2)*size2/2/distance;
    
     
    if(pow(size1/2, 2)>pow(closestX-xPos1,2)+pow(closestY-yPos1, 2)){
      return true;
    }else{
      return false;
    }
  }
}