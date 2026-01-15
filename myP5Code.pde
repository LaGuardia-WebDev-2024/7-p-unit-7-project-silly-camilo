//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var luneX = 160
var luneY = 140
var luneRed = 110
var cieloX = 460
var cieloY = 140
var luneSquint = 40
var heartX = 225
var heartY = 140
var heartAppear = 0
var heartAppear2 = 0
var heartAppear3 = 0
var cielocheek = 0
var cielocheekRed = 191

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);

  
  
    //lune
  fill(201, 246, 255);
  stroke (161, 198, 255);
  strokeWeight(2);
  ellipse(luneX, luneY + 70, 300, 400);//hair bg

  fill(255, 255, 255);
  ellipse(luneX, luneY + 200, 200, 300);//body

  fill(luneRed, 30, 44);
  noStroke();
  ellipse(luneX, luneY, 230, 210);//head

  triangle(luneX - 112, luneY - 8, luneX - 154, luneY + 60, luneX - 104, luneY + 43); //ears
  triangle(luneX + 112, luneY - 8, luneX + 154, luneY + 60, luneX + 104, luneY + 43);

  fill(201, 246, 255);
  ellipse(luneX - 60, luneY + 40, 80, luneSquint);//eyes
  ellipse(luneX + 60, luneY + 40, 80, luneSquint);

  ellipse(luneX, luneY - 40, 50, 140); //hair front
  arc(luneX - 80, luneY - 100, 140, 200, radians(350), radians(490));
  arc(luneX + 80, luneY - 100, 140, 200, radians(50), radians(190));

  fill(235, 255, 253);
  rect(luneX - 100, luneY - 70, 20, 40); //hair highlights
  rect(luneX - 70, luneY - 40, 20, 30);
  rect(luneX + 80, luneY - 70, 20, 40); 
  rect(luneX + 50, luneY - 40, 20, 30);
  

    //cielo
fill(255, 249, 224);
ellipse(cieloX, cieloY + 70, 300, 400);//hair bg

fill(252, 194, 194);
stroke (255, 153, 175);
strokeWeight(2);
ellipse(cieloX, cieloY + 200, 200, 300); //body

fill(191, 129, 98);
noStroke();
ellipse(cieloX, cieloY, 230, 210); //head

fill(255, 255, 255);
triangle(cieloX - 112, cieloY - 8, cieloX - 154, cieloY - 30, cieloX - 104, cieloY + 43); //ears
triangle(cieloX + 112, cieloY - 8, cieloX + 154, cieloY - 30, cieloX + 104, cieloY + 43);
triangle(cieloX - 112, cieloY + 8, cieloX - 154, cieloY + 30, cieloX - 104, cieloY + 43); 
triangle(cieloX + 112, cieloY + 8, cieloX + 154, cieloY + 30, cieloX + 104, cieloY + 43);
triangle(cieloX - 47, cieloY - 105, cieloX - 90, cieloY - 132, cieloX - 104, cieloY - 62);
triangle(cieloX + 47, cieloY - 105, cieloX + 90, cieloY - 132, cieloX + 104, cieloY - 62);

fill(255, 249, 224);
ellipse(cieloX - 60, cieloY + 30, 80, 60);//eyes
ellipse(cieloX + 60, cieloY + 30, 80, 60);

fill(cielocheekRed, 129, 98);
arc(cieloX - 60, cieloY + 70, 80, cielocheek, radians(201), radians(360));//under eye cheek smile :D//
arc(cieloX + 60, cieloY + 70, 80, cielocheek, radians(180), radians(338));

fill(255, 249, 224);
arc(cieloX - 100, cieloY - 100, 180, 200, radians(350), radians(490)); //hair front
arc(cieloX + 80, cieloY - 100, 200, 200, radians(50), radians(190));

fill(255, 254, 247);
  rect(cieloX - 110, cieloY - 80, 20, 40); //hair highlights
  rect(cieloX - 80, cieloY - 50, 20, 30);
  rect(cieloX + 80, cieloY - 80, 20, 40); 
  rect(cieloX + 50, cieloY - 50, 20, 30);


//heart1
fill(255, 156, 210, heartAppear);
ellipse(heartX, heartY, 30, 30);
ellipse(heartX + 25, heartY, 30, 30);
triangle(heartX - 15, heartY + 5, heartX + 13, heartY + 35, heartX + 40, heartY + 5);

//heart2
fill(255, 156, 210, heartAppear2);
ellipse(heartX + 40, heartY +100, 30, 30);
ellipse(heartX + 65, heartY +100, 30, 30);
triangle(heartX + 25, heartY + 105, heartX + 53, heartY + 135, heartX + 80, heartY + 105);

//heart3
fill(255, 156, 210, heartAppear3);
ellipse(heartX - 10, heartY +200, 30, 30);
ellipse(heartX + 15, heartY +200, 30, 30);
triangle(heartX - 25, heartY + 205, heartX + 3, heartY + 235, heartX + 30, heartY + 205);

if(mouseX >= 1){
    if(mouseY >= 1){
        if(mouseY <= 400){
            cieloX = mouseX;
            if(mouseY <= 200){
                if(mouseY >= 70){
                    cieloY = mouseY;   
                }
            
            }
        }
    }
}



if (cieloX <= 380){
    if (luneSquint <= 90){
        luneSquint ++;
    }
    
    if (luneY <= 165){
        luneY ++;
        luneX --;
    }
    if (luneRed <= 180){
        luneRed++;
    }

    if (cielocheek <= 60){
        cielocheek+= 5;
    }

    heartAppear +=200;

    if(heartY <= 100){
        heartAppear2 += 200;
    }

    if(heartY <= 0){
        heartAppear3 += 200;
    }
}

if(heartAppear >= 100){
        heartY -=2;
    }


 if(heartAppear2 >= 100){
        heartY --;
    }

if(heartAppear3 >= 100){
        heartY --;
    }

  //Show x y values when mousepressed
  if(mousePressed){
        luneX = 160
        luneY = 140
        luneRed = 110
        cieloX = 460
        cieloY = 140
        luneSquint = 40
        heartX = 225
        heartY = 140
        heartAppear = 0
        heartAppear2 = 0
        heartAppear3 = 0
        cielocheek = 0
        cielocheekRed = 191
    }
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
