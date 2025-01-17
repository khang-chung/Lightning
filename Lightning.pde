float startX;
float startY;
float endX;
float endY;
int clicks;
int r = 255;
int g = 0;
int b = 255;

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
  startX = mouseX;
  startY = mouseY;
  clicks++;

  
 // startX = mouseX; //the mouse location becomes
  //startY = mouseY;  //the source of the bolt
}

//click for lightning to go straight to your cursor
//click, then move your mouse in the y-direction to have lightning follow your mouse downward
//drag up to down works too

class Bolt {
  
  void display() {
    while(startY < height){//to bottom of screen
       endX = startX + int(random(-5,5)); //x-value varies
       endY = startY + 2;    //y just goes up
     strokeWeight(3);//bolt is a little thicker than a line
     stroke(r, g, b); 
     line(startX,startY,endX,endY);//draw a tiny segment
     startX = endX;  //then x and y are moved to the 
     startY = endY;  //end of the segment and so on
    }
    
       
    
    if(clicks%1 == 0) {
      r = (int)random(150, 255);
      g = (int)random(150, 255);
      b = (int)random(150, 255);
    }
  }
}
