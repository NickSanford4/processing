
import ddf.minim.*;
PImage backgroundImage;
Minim minim;
AudioSample sound;
int x = 500;
int y = 25;
int  xspeed =10;
int  yspeed = 10;
int xpaddle = 500;
void setup(){
  backgroundImage = loadImage("pong.jpeg");
  minim = new Minim (this);
  sound = minim.loadSample("pong.wav", 128);
  size(1000,930);
  
  
  
  
  
  
  
}
void draw(){
image(backgroundImage, 0, 0, 1000, 930);  
fill (216, 46, 20);
stroke (175, 46, 27);
ellipse (x,y, 50, 50);
if (x >= 1000){
  xspeed = -xspeed;
 
}
if (x <= 0){
  xspeed = -xspeed;
  
}
x = x+ xspeed;
  
  if (y <= 0){
  yspeed = -yspeed;
  }
   if (intersects (x,y,mouseX,900, 70)){
     sound.trigger();  
  yspeed = -yspeed;
   }
   if (y>930){
     System.exit(0);
   }
  y= y+ yspeed;
  fill (0, 0, 255);
  rect (mouseX, 900, 70, 30);
  
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}


