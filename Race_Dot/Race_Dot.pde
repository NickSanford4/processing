
//1. Make a variable to hold the X co-ordinate of the dot, and set it to something.
int x_dot = 50;

void setup() {
  size(800, 200);
}

void draw() {
  //3. make it a nice color
 fill(250,0,250);
  //4. if the mouse is pressed...
     if(mousePressed){
//5. ... change the X co-ordinate so that the dot moves to the right
      x_dot ++;
     }
  //2. Draw an ellipse of height and width 100. Make sure to use your variable for the X position.
ellipse(x_dot, 100,100,100);
//6. Make your dot move really fast so that it can win the race (you have to figure out what part of your code to change)

//7. Use this method to play a ding when your dot crosses the finish line. 


}


