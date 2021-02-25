int marginTop = 10;
int marginLeft = 10;
int marginRight = 10;
int marginBottom = 10;

int sirkaCudliku = 20;
int vyskaCudliku = 20;
int sirkaMezery = 10;

int pocetBarev = 5;
int actPocetBarev;

float Rbarva;
float Gbarva;
float Bbarva;


void setup() {
  size(1000, 1000);
  background(194, 255, 255);
}

void draw() {
  int noColorArea = 2*marginTop + vyskaCudliku; //vertikální hranice panelu s čudlíky, kde nelze malovat

  int paintAreaX1 = marginLeft; //levý okraj malovacího
  int paintAreaX2 = width - marginRight; // pravý okraj malovacího plátna
  int paintAreaY1 = noColorArea; //horní okraj plátna
  int paintAreaY2 = height - marginBottom; //dolní okraj plátna

  int paintAreaWidth = width - marginLeft - marginRight; //šířka plátna
  int paintAreaHeight = height - noColorArea - marginBottom; //výška plátna

  int cudlikX = marginLeft;
  int cudlikY = marginTop;

  //vykreslení plátna
  stroke(0);
  rect(paintAreaX1, paintAreaY1, paintAreaWidth, paintAreaHeight);

  stroke(42);

  for (actPocetBarev = 1; actPocetBarev <= pocetBarev; actPocetBarev++) {
    Rbarva = random(250);
    Gbarva = random(250);
    Bbarva = random(250);
    rect(cudlikX, cudlikY, sirkaCudliku, vyskaCudliku);
    fill(Rbarva, Gbarva, Bbarva);


    cudlikX+=sirkaCudliku+sirkaMezery;
  }

  /*for (actPocetBarev = 1; actPocetBarev <= pocetBarev; actPocetBarev++) {
    println(actPocetBarev);
    cudlikX+=sirkaCudliku+sirkaMezery;
  }*/
}
