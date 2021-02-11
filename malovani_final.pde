int barvaPlatna = 255;
int barvaUI = 80;

int marginTop = 10;
int marginLeft = 10;
int marginRight = 10;
int marginBottom = 10;

int sirkaMezery = 10;

int sirkaCudliku = 50;
int vyskaCudliku = 50;

int vyskaPoleCudliku = marginTop + vyskaCudliku; //vertikální hranice, po kterou je snímáno kliknutí na čudlík

int Rbarva = 0;
int Gbarva = 0;
int Bbarva = 0;

int tloustkaStetce = 1;
int tloustkaCar = 2;
int tloustkaGumy = 20;


void setup() {
  background(194, 255, 255);
  size(600, 600);
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

  //vykreslení tlačítka na výběr černé barvy
  stroke(0);
  fill(0);
  rect(poziceCudlikuXa1, marginTop, sirkaCudliku, vyskaCudliku);  

  //vykreslení tlačítka na výběr černvené barvy
  stroke(255, 0, 0);
  fill(255, 0, 0);
  rect(poziceCudlikuXb1, marginTop, sirkaCudliku, vyskaCudliku);

  //vykreslení tlačítka na výběr zelené barvy
  stroke(0, 255, 0);
  fill(0, 255, 0);
  rect(poziceCudlikuXc1, marginTop, sirkaCudliku, vyskaCudliku);

  //vykreslení tlačítka na výběr modré barvy
  stroke(0, 0, 255);
  fill(0, 0, 255);
  rect(poziceCudlikuXd1, marginTop, sirkaCudliku, vyskaCudliku);

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

    //vykreslení tlačítka na výběr černé barvy
    stroke(0);
    fill(0);
    rect(poziceCudlikuXa1, marginTop, sirkaCudliku, vyskaCudliku);  

    //vykreslení tlačítka na výběr černvené barvy
    stroke(255, 0, 0);
    fill(255, 0, 0);
    rect(poziceCudlikuXb1, marginTop, sirkaCudliku, vyskaCudliku);

    //vykreslení tlačítka na výběr zelené barvy
    stroke(0, 255, 0);
    fill(0, 255, 0);
    rect(poziceCudlikuXc1, marginTop, sirkaCudliku, vyskaCudliku);

    //vykreslení tlačítka na výběr modré barvy
    stroke(0, 0, 255);
    fill(0, 0, 255);
    rect(poziceCudlikuXd1, marginTop, sirkaCudliku, vyskaCudliku);

    //vykreslení tlačítka DELETE
    stroke(255, 0, 0);
    noFill();
    rect(poziceCudlikuDelX1, marginTop, sirkaCudliku, vyskaCudliku);
    line(poziceCudlikuDelX1, marginTop, poziceCudlikuDelX2, poziceCudlikuDelY2);
    line(poziceCudlikuDelX1, poziceCudlikuDelY2, poziceCudlikuDelX2, marginTop);
  }

  if ((mousePressed) && (mouseX > poziceCudlikuXa1) && (mouseX < poziceCudlikuXa2) && (mouseY > marginTop) && (mouseY < vyskaPoleCudliku )) {
    Rbarva = 0;
    Gbarva = 0;
    Bbarva = 0;
  } else if ((mousePressed) && (mouseX > poziceCudlikuXb1) && (mouseX < poziceCudlikuXb2) && (mouseY > marginTop) && (mouseY < vyskaPoleCudliku )) {
    Rbarva = 255;
    Gbarva = 0;
    Bbarva = 0;
  } else if ((mousePressed) && (mouseX > poziceCudlikuXc1) && (mouseX < poziceCudlikuXc2) && (mouseY > marginTop) && (mouseY < vyskaPoleCudliku )) {
    Rbarva = 0;
    Gbarva = 255;
    Bbarva = 0;
  } else if ((mousePressed) && (mouseX > poziceCudlikuXd1) && (mouseX < poziceCudlikuXd2) && (mouseY > marginTop) && (mouseY < vyskaPoleCudliku )) {
    Rbarva = 0;
    Gbarva = 0;
    Bbarva = 255;
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
