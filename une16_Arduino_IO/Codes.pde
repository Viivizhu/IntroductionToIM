int ldr=A0;
int value=0;


void setup() {
Serial.begin(9600);
pinMode(3,OUTPUT);


}


void loop() {
value=analogRead(ldr);
Serial.println("LDR value is :");
Serial.println(value);
//the monitor indicates that the light in my room varies around 920, when i cover the sencor with my finger, it turnes to around 800-700

if(value<850)
  {
    digitalWrite(3,HIGH);//Makes the LED glow in Dark.
  }
  else
  {
    digitalWrite(3,LOW);//Turns the LED OFF in Light.
  }


}
