//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var luneX = 180
var luneY = 140
var luneRed = 110
var cieloX = 220
var cieloY = 140

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);

  noStroke();
  
  //lune
  fill(201, 246, 255);
  ellipse(luneX, luneY + 70, 300, 400);//hair bg
  fill(255, 255, 255);
  ellipse(luneX, luneY + 200, 200, 300);//body
  fill(luneRed, 30, 44);
  ellipse(luneX, luneY, 230, 210);//head
  fill(201, 246, 255);
  ellipse(luneX - 60, luneY + 30, 80, 40);//eyes
  ellipse(luneX + 60, luneY + 30, 80, 40);
  ellipse(luneX, luneY - 40, 50, 140); //hair front
  




  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
