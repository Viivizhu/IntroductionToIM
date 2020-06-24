In my final project, I decided to make an artwork that interact with people when they are observing it. 

- inspiration

I was interested in the idea a wind bell. In my culture, It is something that you hang near the window in summer. When the wind blows, it makes soft noise that will make you feel 'cool'. It reminds you of the summer breeze. 

For the artwork that I want to make for my final project, I want to incorporate that romantic and joyful element of a wind bell. However, nowadays, we are always sitting inside AC with our window closed. The wind bell becomes silent because there is no natural wind. The wind bell that I make reacts to people passing by it and create a soft noise by turning. 


- Project description 

The construction of the project is fairly simple. On the Arduino broad, I have a DC motor and an ultrasonic sensor connected. The DC motor is connected to a wheel and the wind bell I made. The ultrasonic sensor will detect the distance of the object around the bell, so when people walk past it, it will turn and make soft noise. I set a condition that if the object is further than 50cm from the bell, the bell won't turn. Otherwise, if there is an object/person passing the bell from  0-50cm, the sensor will detects it and start the motor from turning. 

Processing is used as a control in this project. On the processing, I created a canvas with width 255. The value of mouseX that is detected from processing will be sent to Arduino as the speed of the motor. So when the mouse is on the very left side of the canvas, the motor doesn't turn or turns very slow. It turns faster and faster when you hover your mouse towards the right. For the user to understnad how to use it, I drew a little image that indicates where to move the mouse 

![](IMG_4888.PNG)

![](IMG_4889.PNG)

![](WechatIMG4.jpeg)

- to view my project, Here is the link of the video:

https://drive.google.com/file/d/10SkTWd2Lnn-Ou-lfIiu5C9HF_L2QfDpl/view?usp=sharing

- challenge 

First of all, it was really hard to create something at home in limited space and limited materials. I was researching if I can make the Arduino controlled by wifi or Bluetooth, however, I didn't find the right tool for it in my kit so that limited a lot of possibilities for my project. There is only a little bit of space for me to move the project because I always need to connect that to my computer. 

When I was building the Arduino, for a while the port is not being detected by my computer. I spent a long time trying everything to connect the broad to my computer. However, later I asked the professor and I realized that this is just a problem with a short circuit. Later when I fixed the problem, everything worked again. I connected the ultrasonic sensor incorrectly. I mixed up the wire for the 5v and ground. 

I was also planning to make a more elaborate processing interaction for the wind bell, but I spent a lot of time making the wind bell from found materials. I ran out of time to make a cooler processing function to interact with my Arduino. I spent a lot of time trying to secure the hanging part of the wind bell to the motor because if the speed is as high as 255, the motion can easily break the wind bell. it was also a pain to hang it up somewhere because the wires are just too short. 

For the codes on Ardunio and processing, it wasn't a big challenge. My codes are relatively simple. Also, because I am using the concept that I experimented with in my previous project before, it was easy to make the code work. 
