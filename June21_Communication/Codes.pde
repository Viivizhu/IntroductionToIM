/* 
//these codes are for processing

 import processing.serial.*;
  Serial port;

int number_of_bubbles = 100;
Bubble[] bubbles = new Bubble[number_of_bubbles];
float tx, ty;
   //bubbles in the background
class Bubble {
float x;
  float y;
  float diameter;

Bubble() {
    x = random(width);
    y = random(height);
diameter = 25;
}

void display(){
   stroke (176,224,230,20);
   fill (176,224,230,50);
   ellipse(x,y,50,50);
}

void ascend(){
    y--;
    x = x + random(-2,2);
 }


void top(){
  if (y < -diameter/2) {
      y = height+diameter/2;
}
}
}



  void setup() {
    size(500, 255);
     background (255,127,80);

    println("Available serial ports:");
    println(Serial.list());

   
    port = new Serial(this, Serial.list()[4], 9600);

   
  for (int i = 0; i < number_of_bubbles; i++) {
  bubbles [i] = new Bubble();
  }

  }

  void draw() {
    frameRate(30);
 background (255,127,80);
 
 //communicateing with the ardunio 
 
    port.write(mouseY);
    
    octopus();


   //loops for bubbles
  for (int i = 0; i < number_of_bubbles; i++) {
  bubbles[i].ascend();
  bubbles[i].display();
  bubbles[i].top();
}
  }

  
 void octopus (){
//background (255,127,80);
  //octopus head
  fill(221,160,221);
  stroke(221,160,221);
  ellipse (250, 250, 100, 100);
  //octopus eyes
  fill (255,127,80);
  stroke(255,127,80);
  ellipse (225, 250, 10, 10);
  ellipse (275, 250, 10, 10);
  //octopus mouse
  fill (255,127,80);
  stroke(255,127,80);
  ellipse (250, 275, 25, 25);
  fill(221,160,221);
  stroke(221,160,221);
  ellipse (250, 275, 10, 10);

   }
   
*/



const int ledPin = 13;      //constant variable - which pin LED is attached to

void setup() {
  
  Serial.begin(9600);         //communicate with the serial monitor 
  pinMode(ledPin, OUTPUT);
}

void loop() {
  byte brightness;             //byte will be from 0-255, so when i want to decide the size of the canvas and the position of the octopus I need to put them in that range 

  if (Serial.available()) {
    brightness = Serial.read();
    analogWrite(ledPin, brightness);  //the position of the mouse controls the number of byte and the brightness of the LED
  }
}
