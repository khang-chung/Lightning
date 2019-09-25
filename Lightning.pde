float startX;
float startY;
float endX;
float endY;

Bolt bolt;

void setup(){
  size(400,400);
  bolt = new Bolt();
}

void draw(){
  background(0);
  //loop to draw 1 lightning bolt:
  bolt.display();
}

void mousePressed(){
  startX = pmouseX;
  startY = 0;
  
 // startX = mouseX; //the mouse location becomes
  //startY = mouseY;  //the source of the bolt
  redraw(); //very useful function! Means "run draw() again"
}

//click for lightning to go straight to your cursor
//click, then move your mouse in the y-direction to have lightning follow your mouse downward
//drag up to down works too

class Bolt {
  
  void display() {
    while(startY < pmouseY){//to bottom of screen
       endX = startX + int(random(-5,5)); //x-value varies
       endY = startY + 2;    //y just goes up
     strokeWeight(2);//bolt is a little thicker than a line
     stroke(255, 0, 255); //white line
     line(startX,startY,endX,endY);//draw a tiny segment
     startX = endX;  //then x and y are moved to the 
     startY = endY;  //end of the segment and so on
    }
    delay(100);
        while(startY < pmouseY){//to bottom of screen
       endX = startX + int(random(-4,4)); //x-value varies
       endY = startY + 3;    //y just goes up
     strokeWeight(3);//bolt is a little thicker than a line
     stroke(255, 0, 255); //white line
     line(startX,startY,endX,endY);//draw a tiny segment
     startX = endX;  //then x and y are moved to the 
     startY = endY;  //end of the segment and so on
  }
  
  
}
}
