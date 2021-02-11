int sirkaPlatna = 600;
int vyskaPlatna = 600;

int marginTop = 10;
int marginLeft = 10;
int marginRight = 10;
int sirkaMezery = 10;
int poziceCudlikuX; // horizontální pozice čudlíku
int poziceCudlikuDelX1; //levý okraj
int poziceCudlikuDelX2; //pravý okraj

int poziceCudlikuDelY2; //úspodní okraj

int sirkaCudliku = 50;
int vyskaCudliku = 50;

void setup() {
  background(60);
  size(600, 600);
}

void draw() {
  noFill();
  
 /* stroke(0);
  rect(marginLeft, marginTop, sirkaCudliku, vyskaCudliku);  
  poziceCudlikuX = sirkaCudliku + sirkaMezery + marginLeft;

  stroke(255);
  rect(poziceCudlikuX, marginTop, sirkaCudliku, vyskaCudliku);
  poziceCudlikuX = sirkaCudliku + sirkaMezery;

  stroke(255, 0, 0);
  rect(130, marginTop, sirkaCudliku, vyskaCudliku);
  poziceCudlikuX = sirkaCudliku + sirkaMezery;


  stroke(0, 255, 0);
  rect(190, marginTop, sirkaCudliku, vyskaCudliku);
  poziceCudlikuX = sirkaCudliku + sirkaMezery;


  stroke(0, 0, 255);
  rect(250, marginTop, sirkaCudliku, vyskaCudliku);
  poziceCudlikuX = sirkaCudliku + sirkaMezery;

  */
  poziceCudlikuDelX1 = width - sirkaCudliku - marginRight;
  poziceCudlikuDelX2 = width - marginRight;
  poziceCudlikuDelY2 = marginTop + vyskaCudliku;
  
  stroke(255, 0, 0);
  rect(poziceCudlikuDelX1, marginTop, sirkaCudliku, vyskaCudliku);
  line(poziceCudlikuDelX1,marginTop,poziceCudlikuDelX2,60);
  line(poziceCudlikuDelX1,poziceCudlikuDelY2,poziceCudlikuDelX2,marginTop);
  
  if ((mousePressed) && (mouseX > poziceCudlikuDelX1) && (mouseX < poziceCudlikuDelX2)  && (marginTop < mouseY) && (mouseY < poziceCudlikuDelY2)) {

background(60);
delay(500);
  }

  if (mousePressed && (mouseButton == LEFT)) {
    stroke(255);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } 
  
  
  
  
  
  
  
  else if (mousePressed && (mouseButton == RIGHT)) {
    strokeWeight(20);
    stroke(0);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}
