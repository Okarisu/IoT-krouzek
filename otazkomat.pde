
int score = 0;
String[] otazka = {"Umí pes chodit?", "Vážně?", "Jsi si jistý?", "Mám ti věřit?", "Nelhal jsi mi celou dobu?"};
int cislo_otazky = 0;

byte[] odpoved = new byte [5];
int cislo_odpovedi = 0;

byte[] reseni ={1, 1, 1, 1, 0};
int cislo_reseni = 0;

int pocet_probehlych_otazek;


void setup() {
  background(0);
  size(350, 350);
  // fill(50);
  // stroke(255, 255, 255);
}

void draw() {


  if (cislo_otazky < 5) {

    text(otazka[cislo_otazky], (width/3) + 20, 50);


    rect(50, 100, 100, 50);
    rect(200, 100, 100, 50);

    text("ANO", 90, 80);
    text("NE", 240, 80);

    // while (mousePressed) {

    /*YES button*/
    if ((mousePressed) && (50 < mouseX) && (mouseX < 150)  && (100 < mouseY) && (mouseY < 150)) {
      //while (mousePressed) {
      odpoved[cislo_odpovedi] = 1;    
      if (odpoved[cislo_odpovedi] == reseni[cislo_reseni]) {
        score++;
      }


      println("Otázka No."+cislo_otazky);
      println("Odpověď No. "+cislo_odpovedi);
      println("Odpověď: "+odpoved[cislo_odpovedi]);

      println("ANO");
      println("Score: "+score);


      cislo_otazky++;
      cislo_odpovedi++;
      cislo_reseni++;
      background(0);
      delay(500);





      /*NO button*/
    } else if ((mousePressed) && (200 < mouseX) && (mouseX < 300) && (100 < mouseY) && (mouseY < 150)) {
      //while (mousePressed) {
      odpoved[cislo_odpovedi] = 0;
      if (odpoved[cislo_odpovedi] == reseni[cislo_reseni]) {
        score++;
      }



      println("Otázka No."+cislo_otazky);
      println("Odpověď No. "+cislo_odpovedi);
      println("Odpověď: "+odpoved[cislo_odpovedi]);
      println("NE");
      println("Score: "+score); 


      cislo_otazky++;
      cislo_odpovedi++;
      cislo_reseni++;
      background(0);
      delay(500);
    }
  } else {
    text("Tvoje score je "+score, (width/3) + 20, 50);
  }
}

