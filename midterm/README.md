-Assignment: midterm project 

As a visual artsits, I wanted to use processing as a canvas to create a interactive underwater world

I want to have a feature that allows the user to create their own underwater world, but also have something inside the world that interacts with the user.

When I was looking for inspiration on how to paint the background. I found this amazing inspiration online for a interesting animation created by Ruiwen
link: (https://www.openprocessing.org/sketch/178381) 
The animation created by Ruiwen is really interesting so i modified her code to create the underground bubble animations.

I wanted a introduction page so that the user can understand how to navigate and interact with this game.
I modified the bubbles I made in the previous class to add more elements for the introduction's background.

For the image, I decided to draw something myself. So I drew a jellyfish.
I wanted the jellyfish to move a bit when the program is running so the user will be curious to interact with it. 
For the interaction with the jellyfish, I want to mimic the animals when human approcahes, they move away. But when humans are further, they are stay there and live there life. 

For the sound, I want to play the sound of underwater bubble when the mouse is pressed.

Challenges:
- One of my biggest challenge was first to understand someone else's code and to modify it based on my need. After a lot of research, I think I learned a lot by understand their code and try to use it for my own need.

- Another big challenge I faced is to make the sound of bubble sounds good. At first, whenever the mouse is pressed, the sound of the bubble plays. But because the mouse is pressed for a longtime, the sound just overlaps and sounds worse and worse when there are more and more overlaps. So I researched and add file.pause() in mouserelease and changed the pause variable to true. so when the user press, if the pause variable is true, I did file.loop().

- Also, there is a big challenge when I added the jellyfish into the canvas, because whenver the jellyfish move, it draw and leave a very ugly line. 
![](Screen%20Shot%202020-06-10%20at%203.19.45%20PM.png)
However, if you put background(255) in the draw() section, the background disappeares very soon.
![](Screen%20Shot%202020-06-10%20at%203.38.49%20PM.png)
So I modified the lifespan of the particles drawn in the background so the bubbles stays longer

Here is the link to my final project
link:(https://github.com/Viivizhu/IntroductionToIM/blob/master/midterm/midterm1.mov)

