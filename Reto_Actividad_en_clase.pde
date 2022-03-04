Pacman pacman1;
void setup() {
  size(680,680);
 
  pacman1 = new Pacman(color(255, 255, 0),300,300,2,190,190,190);// 
}
void draw() {
 
  pacman1.drive();
  pacman1.display();
}

class Pacman { 
  color c;
  float xpos;
  float ypos;
  float xspeed;
  int R;
  int G;
  int B;
  
  Pacman(color tempC, float tempXpos, float tempYpos, float tempXspeed, int r, int g, int b) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    R = r;
    G = g;
    B = b;
    }
  void display() {
    stroke(0);
    fill(c);
    arc(xpos,ypos,60,60,QUARTER_PI,QUARTER_PI+HALF_PI+PI); 
  }
  void drive() {

    if ((keyPressed==true)&&(key=='s')){
    ypos = ypos+xspeed*2;}
    if ((keyPressed==true)&&(key=='w')){
    ypos = ypos-xspeed*2;}

    if ((keyPressed==true)&&(key=='d')){
    xpos = xpos+xspeed*2;}
    if ((keyPressed==true)&&(key=='a')){
    xpos = xpos-xspeed*2;}
       
    if (ypos > 647) { // abajo cafe
     ypos = 650;
     R = 141;
     G = 73;
     B = 37;
     //background( R, G, B);
    }
    if (ypos < 30) { //Arriba amarillo
      ypos = 26;
      R = 219;
      G = 221;
      B = 0;
     //background( R, G, B);
}
    if (xpos > 647) { //Derecha Rosa

      xpos = 650;
      R = 255;
      G = 192;
      B = 203;
      //background( R, G, B);      
    }
    if (xpos < 30) { //Izquierda Morado 
      xpos = 26;
      R = 127;
      G = 0;
      B = 255;
     //background( R, G, B);      
    }
    
    background(R, G, B);
  }
}