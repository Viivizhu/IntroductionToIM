//This is a English vocabulary learning game
//by tryping in the English words of the images shown
//the program will indicates if your answer is correct or not
//Everytime you open the program, the order of the image will be different 


//global variables
PImage[] images;                              
PImage photo;
String[] answers;
int number;
String text;
int WIN;

//the order of the imgage will be random, but the first image will be the instruction image
void getPhoto(){                                
  number = 1+int(random(images.length-1));
  photo = images[number];
  photo.resize(width, height);
  WIN = 0;
  text = "";
  
}

//answer box
void button(float x, float y){                 
  
  pushMatrix();
  translate(x, y);
  fill(255);
  rect(-100, -25, 200, 50);
  fill(0);
  if(text.length()<10)
    textSize(32);
  else
    textSize(32-3.0/2.0*(text.length()-9));
  text(text, -95, 12);
  popMatrix();  
  
}
  
//load the images
void setup(){                                   
                                                
  size(600, 600);                             
                                              
  background(255);
  stroke(0);
  noFill();

  images = new PImage[] {loadImage("0.png"), loadImage("1.png"), loadImage("2.png"),loadImage("3.jpg"),loadImage("4.png"),loadImage("5.png"),loadImage("6.jpg"),loadImage("7.jpg"),loadImage("8.png"),loadImage("9.jpg"),loadImage("10.png"),loadImage("11.jpg"),loadImage("12.jpg"),loadImage("13.jpg"),loadImage("14.jpg"),loadImage("15.jpg")};
  answers = new String[] {"start", "dog", "tree","water","cloud","cow","milk","fish","phone","pen","flower","apple","banana","kiwi","book","orange"};
  
  number = 0;
  photo = images[0];
  photo.resize(width, height);
  WIN = 0;
  text = "";


}


// feedback to the text typed if its correct or not
void draw(){                                    
                                              
  if(WIN>0){
    winScreen();
  }else if(WIN<0){
    loseScreen();
  }else{
    play();
  }
  
}

void play(){                                   
  
  tint(255, 255, 255);
  image(photo, 0, 0);
  button(width/2, height-50);
  
}

//if correct, the screen will turn green
void winScreen(){                               
  
  tint(100, 255, 100);
  image(photo, 0, 0);
  if(mousePressed) getPhoto();
  
}

//if incorrect, the screeen will turn red
void loseScreen(){                              
  
  tint(255, 100, 100);
  image(photo, 0, 0);
  if(mousePressed) getPhoto();
  
}

void keyPressed() {                             
  
  if(key==BACKSPACE) {
    if(text.length()>0) {
      text=text.substring(0, text.length()-1);
    }
  }
  else if(key==RETURN || key==ENTER) {
    if(WIN!=0){
      getPhoto();
    }
    else if(text.equals(answers[number])) {
      WIN = 1;
    }
    else{
      WIN = -1;
    }
  }
  else{
    text += key;
  }
}
