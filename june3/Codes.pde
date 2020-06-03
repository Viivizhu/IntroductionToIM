
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
   stroke (176,224,230,63);
   fill (176,224,230,63);
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

int number_of_bubbles = 100;
Bubble[] bubbles = new Bubble[number_of_bubbles];

void setup (){
  size (500,500);
  frameRate(30);
  background (255,127,80);
for (int i = 0; i < number_of_bubbles; i++) {
bubbles [i] = new Bubble();
}

 



}
void draw (){
background (255,127,80);

for (int i = 0; i < number_of_bubbles; i++) {
bubbles[i].ascend();
  bubbles[i].display();
  bubbles[i].top();
}
octopus ();
}



void octopus (){
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
