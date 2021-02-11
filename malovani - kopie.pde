int sirkaPlatna = 600;
int vyskaPlatna = 600;
int barvaPlatna = 60;
int tloustkaCar = 1; //tloušťka čar tlačítek apod

int tloustkaStetce = 1;
int tloustkaGumy = 20;
int barvaStetce = 255;

int marginTop = 10; //vzdálenost tlačítek od horního okraje
int marginLeft = 10; //vzdálenost tlačítek od levého okraje
int marginRight = 10; //vzdálenost tlačítek od pravého okraje

int poziceCudlikuDelX1; //levý okraj
int poziceCudlikuDelX2; //pravý okraj
int poziceCudlikuDelY2; //spodní okraj

int sirkaCudliku = 50;
int vyskaCudliku = 50;

void setup() {
  background(barvaPlatna);
  size(600, 600);
}

void draw() {
  noFill(); 

  poziceCudlikuDelX1 = width - sirkaCudliku - marginRight; //výpočet pozice tlačítka Delete
  poziceCudlikuDelX2 = width - marginRight; //výpočet pozice rohů kvůli prošktnutí
  poziceCudlikuDelY2 = marginTop + vyskaCudliku;

  stroke(255, 0, 0); //čáry pročkrtnutí tlačítka
  strokeWeight(tloustkaCar);
  rect(poziceCudlikuDelX1, marginTop, sirkaCudliku, vyskaCudliku);
  line(poziceCudlikuDelX1, marginTop, poziceCudlikuDelX2, 60);
  line(poziceCudlikuDelX1, poziceCudlikuDelY2, poziceCudlikuDelX2, marginTop);

  if ((mousePressed) && (mouseX > poziceCudlikuDelX1) && (mouseX < poziceCudlikuDelX2)  && (marginTop < mouseY) && (mouseY < poziceCudlikuDelY2)) {

    background(barvaPlatna);//reset plátna
    delay(500);
  }

  if (mousePressed && (mouseButton == LEFT)) {
    strokeWeight(tloustkaStetce);//kresba
    stroke(barvaStetce);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else if (mousePressed && (mouseButton == RIGHT)) {
    strokeWeight(tloustkaGumy);//gumování
    stroke(barvaPlatna);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}
