int barvaPlatna = 255;
int barvaUI = 80;

int marginTop = 10;
int marginLeft = 10;
int marginRight = 10;
int marginBottom = 10;

int sirkaMezery = 10;

int sirkaCudliku = 20;
int vyskaCudliku = 20;

int vyskaPoleCudliku = marginTop + vyskaCudliku; //vertikální hranice, po kterou je snímáno kliknutí na čudlík

float Rbarva = 0;
float Gbarva = 0;
float Bbarva = 0;

float RbarvaA;
float RbarvaB;
float RbarvaC;
float RbarvaD;
float RbarvaE;
float RbarvaF;
float RbarvaG;
float RbarvaH;

float GbarvaA;
float GbarvaB;
float GbarvaC;
float GbarvaD;
float GbarvaE;
float GbarvaF;
float GbarvaG;
float GbarvaH;

float BbarvaA;
float BbarvaB;
float BbarvaC;
float BbarvaD;
float BbarvaE;
float BbarvaF;
float BbarvaG;
float BbarvaH;

int tloustkaStetce = 1;
int tloustkaCar = 2;
int tloustkaGumy = 20;


void setup() {
  background(194, 255, 255);
  size(1600, 950);
  
RbarvaA = random(250);
RbarvaB = random(250);
RbarvaC = random(250);
RbarvaD = random(250);
RbarvaE = random(250);
RbarvaF = random(250);
RbarvaG = random(250);
RbarvaH = random(250);

GbarvaA = random(250);
GbarvaB = random(250);
GbarvaC = random(250);
GbarvaD = random(250);
GbarvaE = random(250);
GbarvaF = random(250);
GbarvaG = random(250);
GbarvaH = random(250);

BbarvaA = random(250);
BbarvaB = random(250);
BbarvaC = random(250);
BbarvaD = random(250);
BbarvaE = random(250);
BbarvaF = random(250);
BbarvaG = random(250);
BbarvaH = random(250);
}




void draw() {


  int poziceCudlikuDelX1 = width - sirkaCudliku - marginRight; //levý okraj
  int poziceCudlikuDelX2 = width - marginRight; //pravý okraj
  int poziceCudlikuDelY2 = marginTop + vyskaCudliku; //úspodní okraj

  int poziceCudlikuXa1 = marginLeft; // pozice levého horního rohu čudlíku A
  int poziceCudlikuXa2 = poziceCudlikuXa1 + sirkaCudliku; // pozice pravého horního rohu čudlíku A
  int poziceCudlikuXb1 = poziceCudlikuXa2 + sirkaMezery; // pozice levého horního rohu čudlíku B
  int poziceCudlikuXb2 = poziceCudlikuXb1 + sirkaCudliku; // pozice pravého horního rohu čudlíku B
  int poziceCudlikuXc1 = poziceCudlikuXb2 + sirkaMezery;
  int poziceCudlikuXc2 = poziceCudlikuXc1 + sirkaCudliku;
  int poziceCudlikuXd1 = poziceCudlikuXc2 + sirkaMezery;
  int poziceCudlikuXd2 = poziceCudlikuXd1 + sirkaCudliku;
  int poziceCudlikuXe1 = poziceCudlikuXd2 + sirkaMezery;
  int poziceCudlikuXe2 = poziceCudlikuXe1 + sirkaCudliku;
  int poziceCudlikuXf1 = poziceCudlikuXe2 + sirkaMezery;
  int poziceCudlikuXf2 = poziceCudlikuXf1 + sirkaCudliku;
  int poziceCudlikuXg1 = poziceCudlikuXf2 + sirkaMezery;
  int poziceCudlikuXg2 = poziceCudlikuXg1 + sirkaCudliku;
  int poziceCudlikuXh1 = poziceCudlikuXg2 + sirkaMezery;
  int poziceCudlikuXh2 = poziceCudlikuXh1 + sirkaCudliku;

  
  int noColorArea = 2*marginTop + vyskaCudliku; //vertikální hranice panelu s čudlíky, kde nelze malovat

  int paintAreaX1 = marginLeft; //levý okraj malovacího
  int paintAreaX2 = width - marginRight; // pravý okraj malovacího plátna
  int paintAreaY1 = noColorArea; //horní okraj plátna
  int paintAreaY2 = height - marginBottom; //dolní okraj plátna

  int paintAreaWidth = width - marginLeft - marginRight; //šířka plátna
  int paintAreaHeight = height - noColorArea - marginBottom; //výška plátna


  strokeWeight(tloustkaCar);


  //vykreslení plátna
  stroke(0);
  rect(paintAreaX1, paintAreaY1, paintAreaWidth, paintAreaHeight);

  //vykreslení tlačítka A
    stroke(RbarvaA, GbarvaA, BbarvaA);
    fill(RbarvaA, GbarvaA, BbarvaA);
    rect(poziceCudlikuXa1, marginTop, sirkaCudliku, vyskaCudliku);  

    //vykreslení tlačítka B
    stroke(RbarvaB, GbarvaB, BbarvaB);
    fill(RbarvaB, GbarvaB, BbarvaB);
    rect(poziceCudlikuXb1, marginTop, sirkaCudliku, vyskaCudliku);

    //vykreslení tlačítka C
    stroke(RbarvaC, GbarvaC, BbarvaC);
    fill(RbarvaC, GbarvaC, BbarvaC);
    rect(poziceCudlikuXc1, marginTop, sirkaCudliku, vyskaCudliku);

    //vykreslení tlačítka D
    stroke(RbarvaD, GbarvaD, BbarvaD);
    fill(RbarvaD, GbarvaD, BbarvaD);
    rect(poziceCudlikuXd1, marginTop, sirkaCudliku, vyskaCudliku);
    
    //vykreslení tlačítka E
    stroke(RbarvaE, GbarvaE, BbarvaE);
    fill(RbarvaE, GbarvaE, BbarvaE);
    rect(poziceCudlikuXe1, marginTop, sirkaCudliku, vyskaCudliku);
    
    //vykreslení tlačítka F
    stroke(RbarvaF, GbarvaF, BbarvaF);
    fill(RbarvaF, GbarvaF, BbarvaF);
    rect(poziceCudlikuXf1, marginTop, sirkaCudliku, vyskaCudliku);
    
    //vykreslení tlačítka G
    stroke(RbarvaG, GbarvaG, BbarvaG);
    fill(RbarvaG, GbarvaG, BbarvaG);
    rect(poziceCudlikuXg1, marginTop, sirkaCudliku, vyskaCudliku);
    
    //vykreslení tlačítka H
    stroke(RbarvaH, GbarvaH, BbarvaH);
    fill(RbarvaH, GbarvaH, BbarvaH);
    rect(poziceCudlikuXh1, marginTop, sirkaCudliku, vyskaCudliku);


  //vykreslení tlačítka DELETE
  stroke(255, 0, 0);
  noFill();
  rect(poziceCudlikuDelX1, marginTop, sirkaCudliku, vyskaCudliku);
  line(poziceCudlikuDelX1, marginTop, poziceCudlikuDelX2, poziceCudlikuDelY2);
  line(poziceCudlikuDelX1, poziceCudlikuDelY2, poziceCudlikuDelX2, marginTop);

  //DELETE  
  if ((mousePressed) && (mouseX > poziceCudlikuDelX1) && (mouseX < poziceCudlikuDelX2)  && (marginTop < mouseY) && (mouseY < poziceCudlikuDelY2)) {

    strokeWeight(tloustkaCar);
    background(194, 255, 255);


    //vykreslení plátna
    stroke(0);
    fill(barvaPlatna);
    rect(paintAreaX1, paintAreaY1, paintAreaWidth, paintAreaHeight);

    //vykreslení tlačítka A
    stroke(RbarvaA, GbarvaA, BbarvaA);
    fill(RbarvaA, GbarvaA, BbarvaA);
    rect(poziceCudlikuXa1, marginTop, sirkaCudliku, vyskaCudliku);  

    //vykreslení tlačítka B
    stroke(RbarvaB, GbarvaB, BbarvaB);
    fill(RbarvaB, GbarvaB, BbarvaB);
    rect(poziceCudlikuXb1, marginTop, sirkaCudliku, vyskaCudliku);

    //vykreslení tlačítka C
    stroke(RbarvaC, GbarvaC, BbarvaC);
    fill(RbarvaC, GbarvaC, BbarvaC);
    rect(poziceCudlikuXc1, marginTop, sirkaCudliku, vyskaCudliku);

    //vykreslení tlačítka D
    stroke(RbarvaD, GbarvaD, BbarvaD);
    fill(RbarvaD, GbarvaD, BbarvaD);
    rect(poziceCudlikuXd1, marginTop, sirkaCudliku, vyskaCudliku);
    
    //vykreslení tlačítka E
    stroke(RbarvaE, GbarvaE, BbarvaE);
    fill(RbarvaE, GbarvaE, BbarvaE);
    rect(poziceCudlikuXe1, marginTop, sirkaCudliku, vyskaCudliku);
    
    //vykreslení tlačítka F
    stroke(RbarvaF, GbarvaF, BbarvaF);
    fill(RbarvaF, GbarvaF, BbarvaF);
    rect(poziceCudlikuXf1, marginTop, sirkaCudliku, vyskaCudliku);
    
    //vykreslení tlačítka G
    stroke(RbarvaG, GbarvaG, BbarvaG);
    fill(RbarvaG, GbarvaG, BbarvaG);
    rect(poziceCudlikuXg1, marginTop, sirkaCudliku, vyskaCudliku);
    
    //vykreslení tlačítka H
    stroke(RbarvaH, GbarvaH, BbarvaH);
    fill(RbarvaH, GbarvaH, BbarvaH);
    rect(poziceCudlikuXh1, marginTop, sirkaCudliku, vyskaCudliku);
    //vykreslení tlačítka DELETE
    stroke(255, 0, 0);
    noFill();
    rect(poziceCudlikuDelX1, marginTop, sirkaCudliku, vyskaCudliku);
    line(poziceCudlikuDelX1, marginTop, poziceCudlikuDelX2, poziceCudlikuDelY2);
    line(poziceCudlikuDelX1, poziceCudlikuDelY2, poziceCudlikuDelX2, marginTop);
  }

  if ((mousePressed) && (mouseX > poziceCudlikuXa1) && (mouseX < poziceCudlikuXa2) && (mouseY > marginTop) && (mouseY < vyskaPoleCudliku )) {
    Rbarva = RbarvaA;
    Gbarva = GbarvaA;
    Bbarva = BbarvaA;
  } else if ((mousePressed) && (mouseX > poziceCudlikuXb1) && (mouseX < poziceCudlikuXb2) && (mouseY > marginTop) && (mouseY < vyskaPoleCudliku )) {
    Rbarva = RbarvaB;
    Gbarva = GbarvaB;
    Bbarva = BbarvaB;
  } else if ((mousePressed) && (mouseX > poziceCudlikuXc1) && (mouseX < poziceCudlikuXc2) && (mouseY > marginTop) && (mouseY < vyskaPoleCudliku )) {
    Rbarva = RbarvaC;
    Gbarva = GbarvaC;
    Bbarva = BbarvaC;
  } else if ((mousePressed) && (mouseX > poziceCudlikuXd1) && (mouseX < poziceCudlikuXd2) && (mouseY > marginTop) && (mouseY < vyskaPoleCudliku )) {
    Rbarva = RbarvaD;
    Gbarva = GbarvaD;
    Bbarva = BbarvaD;
  } else if ((mousePressed) && (mouseX > poziceCudlikuXe1) && (mouseX < poziceCudlikuXe2) && (mouseY > marginTop) && (mouseY < vyskaPoleCudliku )) {
    Rbarva = RbarvaE;
    Gbarva = GbarvaE;
    Bbarva = BbarvaE;
  } else if ((mousePressed) && (mouseX > poziceCudlikuXf1) && (mouseX < poziceCudlikuXf2) && (mouseY > marginTop) && (mouseY < vyskaPoleCudliku )) {
    Rbarva = RbarvaF;
    Gbarva = GbarvaF;
    Bbarva = BbarvaF;
  } else if ((mousePressed) && (mouseX > poziceCudlikuXg1) && (mouseX < poziceCudlikuXg2) && (mouseY > marginTop) && (mouseY < vyskaPoleCudliku )) {
    Rbarva = RbarvaG;
    Gbarva = GbarvaG;
    Bbarva = BbarvaG;
  } else if ((mousePressed) && (mouseX > poziceCudlikuXh1) && (mouseX < poziceCudlikuXh2) && (mouseY > marginTop) && (mouseY < vyskaPoleCudliku )) {
    Rbarva = RbarvaH;
    Gbarva = GbarvaH;
    Bbarva = BbarvaH;
  }



  //Define paint area
  if ((mouseX > paintAreaX1) && (mouseX < paintAreaX2) && (mouseY > paintAreaY1) && (mouseY < paintAreaY2)) {

    paint();
  }
}

void paint() {
  //PAINT
  if (mousePressed && (mouseButton == LEFT)) {
    stroke(Rbarva, Gbarva, Bbarva);
    strokeWeight(tloustkaStetce);
    line(pmouseX, pmouseY, mouseX, mouseY);
    //CLEAR
  } else if (mousePressed && (mouseButton == RIGHT)) {
    strokeWeight(tloustkaGumy);
    stroke(barvaPlatna);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}
