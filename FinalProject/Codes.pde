/* Final project : Intro to IM
   Vivi Zhu
   For my final project, I want to create an artworks that interact with the audience. the construction is very simple
   There will be an ultrasonic sensor deteting the distance of the audience, and the motor will be used to turn the Artwork
   Processing will be used to control the speed of the motor.
*/


/*
   These codes are for processing

  import processing.serial.*;
  Serial port;
  PImage img;

  void setup() {
    size(256, 150);
    img = loadImage("IMG_4888.PNG");      //load the image for indications


    println("Available serial ports:");   //print out the serial ports
    println(Serial.list());


    port = new Serial(this, Serial.list()[4], 9600);  // on my computer, my port is listed on the 5th, so its 4
  }

  void draw() {
    // display the image on the background
    image(img, 0, 0);

    //the x position of the mouse will be the number that is sent to the motor,
    //the range will be from 0-255,
    //therefore, when the mouse is on the left, the motor turns really slow
    //and when its on the right side, the motor turns fast
    port.write(mouseX);
  }

*/
//Pins that the motor is connected to
const int ain1Pin = 13;
const int ain2Pin = 12;
const int pwmAPin = 11;

const int bin1Pin = 8;
const int bin2Pin = 9;
const int pwmBPin = 10;

//pins that ultrasonic sensor is connected to
const int trig = 6;
const int echo = 7;
long duration;  //variable for how long the sound wave travel
long distance;  //variable for the distance measured
int value;


void setup() {
  Serial.begin(9600);
  //motor
  pinMode(ain1Pin, OUTPUT);
  pinMode(ain2Pin, OUTPUT);
  pinMode(pwmAPin, OUTPUT); // not needed really
  //ultrasonic sensor
  pinMode(echo, INPUT);            //echo pin is an imput
  pinMode(trig, OUTPUT);           //trig pin is an output

  value = analogRead(echo);   //reading the distance so I can check the value and see if the program work
  Serial.print(value);



}

void loop() {


  digitalWrite(trig, LOW);
  delayMicroseconds(2);
  digitalWrite(trig, HIGH);
  delayMicroseconds(10);
  digitalWrite(trig, LOW);
  duration = pulseIn(echo, HIGH);

  // Calculating the distance
  distance = duration * 0.034 / 2; // Speed of sound wave travel and divided by 2 (go and back)
  // Displays the distance on the Serial Monitor therefore I can check the value on the monitor to see if the program work
  Serial.print("Distance: ");
  Serial.print(distance);
  Serial.println(" cm");

  byte turningSpeed;   //the byte is sent from processing and from 0-255

  //Condition: motor don't move when the object is further than 50cm

  if (distance < 0 || distance > 50 ) {
    Serial.println("not move");
    analogWrite(pwmAPin, 0);
    digitalWrite(ain1Pin, HIGH);
    digitalWrite(ain2Pin, LOW);

  }

  //condition: otherwise the motor will move and the speed is controlled by the number sent from processing

  else if (distance > 0 && distance < 50) { //if pressed and in front
    Serial.println("move");
    if (Serial.available()) {
      turningSpeed = Serial.read();

      analogWrite(pwmAPin, turningSpeed);
      digitalWrite(ain1Pin, HIGH);
      digitalWrite(ain2Pin, LOW);

    }

  }


}
