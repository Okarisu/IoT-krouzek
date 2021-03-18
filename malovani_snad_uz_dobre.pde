int marginTop = 10;
int marginLeft = 10;
int marginRight = 10;
int marginBottom = 10;

int sirkaCudliku = 20;
int vyskaCudliku = 20;
int sirkaMezery = 10;
int sirkaPalety;
int vyskaPalety = marginTop + vyskaCudliku;

int noColorArea = 2*marginTop + vyskaCudliku; //vertikální hranice panelu s čudlíky, kde nelze malovat


int pocetBarev = 20;


float Rbarva;
float Gbarva;
float Bbarva;

int cudlikX = marginLeft;
int cudlikY = marginTop;

color[] barvy = new color[pocetBarev];
int poziceBarvy = 0;

int[] mysX = new int[2*pocetBarev+1];
int poziceMysX = 0;


void setup() {


  size(1080, 720);
  background(194, 255, 255);

  
  int paintAreaX1 = marginLeft; //levý okraj malovacího
  int paintAreaX2 = width - marginRight; // pravý okraj malovacího plátna
  int paintAreaY1 = noColorArea; //horní okraj plátna
  int paintAreaY2 = height - marginBottom; //dolní okraj plátna

  int paintAreaWidth = width - marginLeft - marginRight; //šířka plátna
  int paintAreaHeight = height - noColorArea - marginBottom; //výška plátna

  int poziceCudlikuDelX1 = width - sirkaCudliku - marginRight; //levý okraj
  int poziceCudlikuDelX2 = width - marginRight; //pravý okraj
  int poziceCudlikuDelY2 = marginTop + vyskaCudliku; //úspodní okraj


  stroke(0);
  rect(paintAreaX1, paintAreaY1, paintAreaWidth, paintAreaHeight);
  fill(250);

  for (int soucasnyPocetBarev = 1; soucasnyPocetBarev <= pocetBarev; soucasnyPocetBarev++) {
    //color a = get(mouseX, mouseY); //co to boha je zač? PHP? jaký get?

    barvy[poziceBarvy] = color(round(random(255)), round(random(255)), round(random(255)));

    rect(cudlikX, cudlikY, sirkaCudliku, vyskaCudliku);
    
    mysX[poziceMysX] = cudlikX;
    poziceMysX++;
    println("pozice mysi: "+mysX[poziceMysX]);
    mysX[poziceMysX] = cudlikX+sirkaCudliku;
    poziceMysX++;
    println("pozice mysi: "+mysX[poziceMysX]);
    
    fill(barvy[poziceBarvy]);
    cudlikX+=sirkaCudliku+sirkaMezery;

    println("barva "+poziceBarvy+", kod barvy: "+hex(barvy[poziceBarvy]));

    poziceBarvy++;
  }

  sirkaPalety = cudlikX + sirkaCudliku;

  //vykreslení tlačítka DELETE
  stroke(255, 0, 0);
  noFill();
  rect(poziceCudlikuDelX1, marginTop, sirkaCudliku, vyskaCudliku);
  line(poziceCudlikuDelX1, marginTop, poziceCudlikuDelX2, poziceCudlikuDelY2);
  line(poziceCudlikuDelX1, poziceCudlikuDelY2, poziceCudlikuDelX2, marginTop);
}

void draw() {


  //DEL
  int poziceCudlikuDelX1 = width - sirkaCudliku - marginRight; //levý okraj
  int poziceCudlikuDelX2 = width - marginRight; //pravý okraj
  int poziceCudlikuDelY2 = marginTop + vyskaCudliku; //spodní okraj
  int paintAreaX1 = marginLeft; //levý okraj malovacího
  
  int paintAreaY1 = noColorArea; //horní okraj plátna
  

  int paintAreaWidth = width - marginLeft - marginRight; //šířka plátna
  int paintAreaHeight = height - noColorArea - marginBottom; //výška plátna

  if ((mousePressed) && (mouseX > poziceCudlikuDelX1) && (mouseX < poziceCudlikuDelX2)  && (marginTop < mouseY) && (mouseY < poziceCudlikuDelY2)) {
  stroke(0);
  rect(paintAreaX1, paintAreaY1, paintAreaWidth, paintAreaHeight);
  fill(250);
  }
  //<!-- -->
  
  
  if ((mousePressed) && (mouseX <= sirkaPalety) && (mouseY <= vyskaPalety)) {
    
    
  }


  


  stroke(42);
}

/*void paint() {
 //PAINT
 if (mousePressed && (mouseButton == LEFT)) {
 stroke(Rbarva, Gbarva, Bbarva);
 //strokeWeight(tloustkaStetce);
 line(pmouseX, pmouseY, mouseX, mouseY);
 //CLEAR
 } else if (mousePressed && (mouseButton == RIGHT)) {
 //strokeWeight(tloustkaGumy);
 //stroke(barvaPlatna);
 line(pmouseX, pmouseY, mouseX, mouseY);
 }
 }*/
