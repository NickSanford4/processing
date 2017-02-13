
void setup(){
size(500,500);
  fill(255,255,255);
  ellipse(50,50,50,35);
ellipse(120,50,50,35);
}
void draw () {
fill(0,0,0);
if(mouseX > 30 && mouseY < 65 && mouseY > 30 && mouseX < 60){

ellipse(mouseX + 70 ,54,15,15);
ellipse(mouseX,mouseY,15,15);
}
}
