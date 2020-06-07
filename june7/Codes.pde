//colors

//color (organges #E55300, #FF6900) (red#FF2B00)  
//yellow (#FE9F00,#FEC34D)
//blue(#003BAE)
//green (#15AB00,#FFFC00);

//poem's title and author 
String title = "remember this is now";
String author = "Sylvia Plath";

String message1 = "Remember " ; 
String message2 = "Remember " ; 
String message3 = "this is now " ; 
String message4 = "and now" ;
String message5 = "AND NOW " ;
String message6 = "Live it" ;
String message7 = "Feel it " ;
String message8 = "Cling to it " ;
String message9 = "I want to become acutely aware of all I’ve taken for granted' " ;



PFont f;
float x, y;
int xRem;
int xRem2; 




void setup() {
  size (1000,200);
  background (#FEC34D);
  smooth ();
 
 x=width/2.5;
 y=height/2;
 xRem = 0 ; 
 xRem2 = 200; 

 //title 
}

  
  void draw (){
    background (#FEC34D);
  String[] fontList = PFont.list();
  //printArray(fontList);
  f = createFont("Thonburi-Bold", 32);
  textFont(f, 32);
  fill(#FFFC00);
     text(title,x,y);
    
 //author
 f = createFont("Thonburi-Bold", 32);
  textFont(f, 15);
     text(author,x,y+20);
     
     
 //remember - moving from left to right 
fill(#FF2B00,100); 
 textFont(f, 100);
    text(message1,xRem++,100);
    text(message2,xRem2++,190);
    
  //this is now - i want this to be vertical 
 fill(#E55300,250); 
 textFont(f, 30);
 
 float a = 30;
float b = 150;
textAlign(CENTER,BOTTOM);

  pushMatrix();
  translate(a,b);
  rotate(-HALF_PI);
  text(message3,80,20);
   fill(#FF6900,250); 
 textFont(f, 70);
  text(message4,0,110);
  textFont(f, 80);
  text(message5,50,180);
    popMatrix();
    
    //live it 
   fill(#003BAE,200); 
   textFont(f, 100);
    text(message6,330,220);
    
    //feel it
    
 
     fill(#B44010,250); 
   textFont(f, 80);
    text(message7,400,80);
    
    //cling to it
    fill(#15AB00,200); 
   textFont(f, 100);
    text(message8,750,220);
   
    //I want to become acutely aware of all I’ve taken for granted
    
       fill(#003BAE,250);
   textFont(f, 30);
    text(message9,500,50);
   
  }


