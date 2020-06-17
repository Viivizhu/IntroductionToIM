int trig = 10;            //the ultrasonic senso is connected to D10 and D11
int echo = 11;
const int buttonPin = 2;  // the number of the pushbutton pin is 2
long duration;  
long distance;


int buttonState = 0;  

void setup() {
  pinMode(echo, INPUT);

  pinMode(buttonPin, OUTPUT);

  Serial.begin(9600);
}

void loop() {
  digitalWrite(buttonPin, LOW);     // when button is pushed, use the digital data to control the sound.
  delayMicroseconds(2);
  digitalWrite(buttonPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(buttonPin, LOW);
  duration = pulseIn(echo, HIGH);
  distance = (duration / 2) * .0344;    //344 m/s = speed of sound. found this on a tutorial by Sam's Neat Project Blog 
 
  buttonState = digitalRead(buttonPin);


  int notes[7] = {261, 294, 329, 349, 392};  //creating the music on the arrays
  //          mid C  D   E   F   G   A   B



  if (distance < 0 || distance > 50 || buttonState == LOW) { //if the button not presed and not in front

    noTone(12); //dont play music

  }

  else if (distance >0 || distance < 50  || buttonState ==HIGH) {  //if pressed and in front 

    int sound = map(distance, 0, 50, 0, 6);  
    tone(12, notes[sound]);  // a different note is played when the hand move to a different distance. 

  }


}
