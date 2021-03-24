int marginTop = 10;
int marginLeft = 10;
int marginRight = 10;
int marginBottom = 10;

int sirkaCudliku = 20;
int vyskaCudliku = 20;
int sirkaMezery = 10;
int posunCudliku = sirkaCudliku + sirkaMezery;
int sirkaPalety;
int vyskaPalety = marginTop + vyskaCudliku;

int noColorArea = 2 * marginTop + vyskaCudliku; //vertikální hranice panelu s čudlíky, kde nelze malovat

int pocetBarev = 20;
int tloustkaStetce = 6;
//int tloustkaGumy = 10;
int barvaPlatna = 255;

float Rbarva;
float Gbarva;
float Bbarva;
int firstCol = 0;
int firstStroke = 5;
color actCol;

int cudlikX = marginLeft;
int cudlikY = marginTop;

color[] barvy = new color[pocetBarev];
int poziceBarvy = 0;

String save = "ULOŽIT";
String filename = "obrazek";
String fileextension = ".png";
int filenumber = 1;




void setup() {
    
    color backgroundColor = color(194, 255, 255);
    
    size(1080, 720);
    background(backgroundColor);    
    
    int paintAreaX1 = marginLeft; //levý okraj malovacího plátna
    int paintAreaX2 = width - marginRight; // pravý okraj malovacího plátna
    int paintAreaY1 = noColorArea; //horní okraj plátna
    int paintAreaY2 = height - marginBottom; //dolní okraj plátna
    
    int paintAreaWidth = width - marginLeft - marginRight; //šířka plátna
    int paintAreaHeight = height - noColorArea - marginBottom; //výška plátna
    
    int poziceCudlikuDelX1 = width - sirkaCudliku - marginRight; //levý okraj
    int poziceCudlikuDelX2 = width - marginRight; //pravý okraj
    int poziceCudlikuDelY2 = marginTop + vyskaCudliku; //spodní okraj
    
    int poziceCudlikuStrokeminus = poziceCudlikuDelX1 - posunCudliku;
    int poziceCudlikuStrokeplus = poziceCudlikuStrokeminus - posunCudliku;
    
    textSize(15);
    int sirkaSave = round(textWidth(save)) + 6;
    int poziceSave = poziceCudlikuStrokeplus - sirkaMezery - sirkaSave;
    
    //vykreslení plátna
    stroke(0);
    rect(paintAreaX1, paintAreaY1, paintAreaWidth, paintAreaHeight);
    fill(barvaPlatna);
    
    for (int soucasnyPocetBarev = 1; soucasnyPocetBarev <= pocetBarev; soucasnyPocetBarev++) {
        //color a = get(mouseX, mouseY); //co to boha je zač? PHP? jaký get?
        
        barvy[poziceBarvy] = color(round(random(255)), round(random(255)), round(random(255)));
        
        rect(cudlikX, cudlikY, sirkaCudliku, vyskaCudliku);
        
        fill(barvy[poziceBarvy]);
        cudlikX +=posunCudliku;       
        
        poziceBarvy++;
    }
    
    sirkaPalety = cudlikX + sirkaCudliku; //určení šířky paletky (pravá strana posledního čudlíku)
    
    int cudlikX = marginLeft;//vynulování pozice prvního čudlíku
    
    //vykreslení tlačítka DELETE
    stroke(255, 0, 0);
    strokeWeight(3);
    noFill();
    rect(poziceCudlikuDelX1, marginTop, sirkaCudliku, vyskaCudliku);
    line(poziceCudlikuDelX1, marginTop, poziceCudlikuDelX2, poziceCudlikuDelY2);
    line(poziceCudlikuDelX1, poziceCudlikuDelY2, poziceCudlikuDelX2, marginTop);
    
    //vykreslení tlačítek pro volbu tloušťky štětce
    stroke(0, 0, 255);
    noFill();
    
    rect(poziceCudlikuStrokeplus, marginTop, sirkaCudliku, vyskaCudliku);
    line(poziceCudlikuStrokeplus,(marginTop + (vyskaCudliku / 2)), poziceCudlikuStrokeplus + sirkaCudliku,(marginTop + (vyskaCudliku / 2)));
    line((poziceCudlikuStrokeplus + (sirkaCudliku / 2)), marginTop,(poziceCudlikuStrokeplus + (sirkaCudliku / 2)), marginTop + vyskaCudliku);
    rect(poziceCudlikuStrokeminus, marginTop, sirkaCudliku, vyskaCudliku);
    line(poziceCudlikuStrokeminus,(marginTop + (vyskaCudliku / 2)), poziceCudlikuStrokeminus + sirkaCudliku,(marginTop + (vyskaCudliku / 2)));
    
    
    //vykreslení tlačítka save
    fill(0);
    text(save, poziceSave + 3, marginTop + 1, sirkaSave, vyskaCudliku);
    stroke(2);
    noFill();
    rect(poziceSave, marginTop, sirkaSave, vyskaCudliku);
}



void draw() {
    
    
    
    
    //DEL
    int poziceCudlikuDelX1 = width - sirkaCudliku - marginRight; //levý okraj DEL
    int poziceCudlikuDelX2 = width - marginRight; //pravý okraj DEL
    int poziceCudlikuDelY2 = marginTop + vyskaCudliku; //spodní okraj DEL
    
    int paintAreaX1 = marginLeft; //levý okraj malovacího plátna
    int paintAreaX2 = width - marginRight; // pravý okraj malovacího plátna
    int paintAreaY1 = noColorArea; //horní okraj plátna
    int paintAreaY2 = height - marginBottom; //dolní okraj plátna
    
    int paintAreaWidth = width - marginLeft - marginRight; //šířka plátna
    int paintAreaHeight = height - noColorArea - marginBottom; //výška plátna
    
    int nBarvy = 0;
    int delenaVzdalenost = sirkaCudliku + sirkaMezery;
    
    int poziceCudlikuStrokeminus = poziceCudlikuDelX1 - posunCudliku;
    int poziceCudlikuStrokeplus = poziceCudlikuStrokeminus - posunCudliku;    
    
    int sirkaSave = round(textWidth(save)) + 6;
    int poziceSave = poziceCudlikuStrokeplus - sirkaMezery - sirkaSave;
    
    String filenameConverted = filename + str(filenumber) + fileextension;
    
    color backgroundColor = color(194, 255, 255);
    
    
    
    
    //DEL fce
    if ((mousePressed) && (mouseX > poziceCudlikuDelX1) && (mouseX < poziceCudlikuDelX2)  && (marginTop < mouseY) && (mouseY < vyskaPalety)) {
        stroke(backgroundColor);
        strokeWeight(0);
        fill(backgroundColor);
        rect(0, paintAreaY1, width,(height - noColorArea));
        
        stroke(0);
        strokeWeight(1);
        fill(250);
        rect(paintAreaX1, paintAreaY1, paintAreaWidth, paintAreaHeight);
        
        strokeWeight(tloustkaStetce);
    } 
    
    
    //výběr barvy
    if ((mousePressed) && (mouseX <= sirkaPalety) && (mouseY <= vyskaPalety)) {
        nBarvy = mouseX / delenaVzdalenost;
        actCol = barvy[nBarvy - 1];
        stroke(actCol);//nevím proč - 1, ale funguje to tak
    }
    
    //tloušťka štětce plus
    if ((mousePressed) && (mouseX > poziceCudlikuStrokeplus) && (mouseX < (poziceCudlikuStrokeplus + sirkaCudliku)) && (mouseY > marginTop) && (mouseY < vyskaPalety)) {
        tloustkaStetce = tloustkaStetce + 2;
    }
    
    //tloušťka štětce minus
    
    if ((mousePressed) && (mouseX > poziceCudlikuStrokeminus) && (mouseX < (poziceCudlikuStrokeminus + sirkaCudliku)) && (mouseY > marginTop) && (mouseY < vyskaPalety)) {
        if (tloustkaStetce > 0) { 
            tloustkaStetce = tloustkaStetce - 2;
        }
    }
    
    
    //paint
    if ((mousePressed) && (mouseX > paintAreaX1) && (mouseX < paintAreaX2) && (mouseY > paintAreaY1) && (mouseY < paintAreaY2)) {
        paint();
    }
    
    //save
    if ((mousePressed) && (mouseX > poziceSave) && (mouseX < poziceSave + sirkaSave) && (mouseY > marginTop) && (mouseY < vyskaPalety)) {
        save(filenameConverted);
        filenumber++;
    }
    
    
}

void paint() {
    //PAINT
    if ((mousePressed) && (mouseButton == LEFT)) {
        stroke(actCol);
        strokeWeight(tloustkaStetce);
        line(pmouseX, pmouseY, mouseX, mouseY);
        //ERASE
    } else if ((mousePressed) && (mouseButton == RIGHT)) {
        strokeWeight(tloustkaStetce);
        stroke(barvaPlatna);
        line(pmouseX, pmouseY, mouseX, mouseY);
    }
}

