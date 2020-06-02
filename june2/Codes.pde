void setup (){
  size (500,500);
  frameRate(30);
  background(255,105,180) ;
  x = width/2;
  savedTime = millis();
}

long xPosition = 0; 
long yPosition = 2; 

float speed = 0;
float speedX = 60;
float gravity = .01 ;
float x;
float y = 0;
float bounceEfficiency = 1.0;
float speedY = 30; 

int savedTime;
int totalTime = 5000;

void draw () {
 
  
//first layer background
fill(102,255,102);
  stroke(102,255,102); 
 ellipse (xPosition, 0, 50, 50);
  //println("xPosition" +xPosition + "yPosition" +yPosition);
  xPosition =xPosition + 10; 
  //yPosition =yPosition + 10;
  ellipse (xPosition, 100, 50, 50);
  xPosition =xPosition + 1; 
  
   ellipse (xPosition, 200, 50, 50);
  xPosition =xPosition + 1; 
  
   ellipse (xPosition, 300, 50, 50);
  xPosition =xPosition + 1; 
  
   ellipse (xPosition, 400, 50, 50);
  xPosition =xPosition + 10; 
  
  ellipse (xPosition, 500, 50, 50);
  xPosition =xPosition + 10;
  
  //second layer background
  noFill();
  stroke(255,69,0); 
  
  ellipse (xPosition, 0, 50, 50);
  
  xPosition =xPosition + 10; 
  
  ellipse (xPosition, 100, 50, 50);
  xPosition =xPosition +10; 
  
   ellipse (xPosition, 200, 50, 50);
  xPosition =xPosition + 10; 
  
   ellipse (xPosition, 300, 50, 50);
  xPosition =xPosition + 10; 
  
   ellipse (xPosition, 400, 50, 50);
  xPosition =xPosition + 10; 
  
  ellipse (xPosition, 500, 50, 50);
  xPosition =xPosition + 10;
  
  //third layer background
  noFill();
  stroke(102,255,102); 
  
  ellipse (xPosition, 25, 50, 50);
  
  xPosition =xPosition + 10; 
  
  ellipse (xPosition, 125, 50, 50);
  xPosition =xPosition +10; 
  
   ellipse (xPosition, 225, 50, 50);
  xPosition =xPosition + 10; 
  
   ellipse (xPosition, 325, 50, 50);
  xPosition =xPosition + 10; 
  
   ellipse (xPosition, 425, 50, 50);
  xPosition =xPosition + 10; 
  
  ellipse (xPosition, 500, 50, 50);
  xPosition =xPosition + 10;
  
  //fourth layer background
   fill(255,69,0);
  stroke(255,69,0); 
  
  ellipse (xPosition, 25, 50, 50);
  
  xPosition =xPosition + 10; 
  
  ellipse (xPosition, 125, 50, 50);
  xPosition =xPosition +10; 
  
   ellipse (xPosition, 225, 50, 50);
  xPosition =xPosition + 10; 
  
   ellipse (xPosition, 325, 50, 50);
  xPosition =xPosition + 10; 
  
   ellipse (xPosition, 425, 50, 50);
  xPosition =xPosition + 10; 
  
  ellipse (xPosition, 500, 50, 50);
  xPosition =xPosition + 10;
  
 /*
 stroke(0,255,255); 
  
  line(xPosition, yPosition ,20,500);
  xPosition = xPosition + 5 ; 

 line(xPosition, yPosition ,500,500);
  xPosition = xPosition - 5  ; 
  */
  
  fill(0,255,255);
  stroke(0,255,255); 
  
  ellipse(x, y, 5, 5);

  y+=speed; ; 
  x+=speedX; 
  if (x>=width || x<=0) {
    speedX = -speedX;
  }
 
 speed += gravity; 
 
 noFill();
  stroke(0,255,255); 

  ellipse(x, y, 15, 15);

  y+=speed; ; 
  x+=speedY; 
  if (x>=width || x<=0) {
    speedY = -speedY;
  }
 
 speed += gravity; 
 
 
  if (y>=height ) {
    speed = bounceEfficiency * speed; 
    speed = -speed;
   
    int passedTime = millis() - savedTime;
    if (passedTime > totalTime) {
    speed = 0; 
    savedTime = millis(); 
   
  }
   
   
  }
  
  
  ellipse (mouseX, mouseY,50,50);
  
  
}
