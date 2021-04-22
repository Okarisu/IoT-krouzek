public
  boolean clicked = false;
boolean rozbalitStopky = false;
int startTime = millis();
int buttonGap = 10;

void setup() {
  size(1080, 720);
  background(0);
  stroke(255);
}

void draw() {

  background(0);
  getTime();
  stopky();
}

void getTime() { 
  String hour;
  String minute;
  String second;

  if (hour() < 10) {
    hour = "0" + str(hour());
  } else {
    hour = str(hour());
  }

  if (minute() < 10) {
    minute = "0" + str(minute());
  } else {
    minute = str(minute());
  }

  if (second() < 10) {
    second = "0" + str(second());
  } else {
    second = str(second());
  }  

  String time = hour + ":" + minute + ":" + second;  
  String date = str(day()) + "/" + str(month()) + "/" + str(year());

  textSize(60);
  float timePoz = width/2 - textWidth(time)/2;
  float timeHeight = textAscent() + textDescent();
  text(time, timePoz, timeHeight);

  textSize(40);
  float datePoz = width/2 - textWidth(date)/2;
  float dateHeight = textAscent() + textDescent();
  text(date, datePoz, dateHeight + timeHeight + 10);
}

void stopky() {

  boolean rozbalitStopky = false;

  textSize(40);
  noFill();
  String stopkyText = "STOPKY";
  String startText = "START";
  String stopText = "STOP";
  String resetText = "RESET";

  float buttonHeight = textAscent() + buttonGap;

  int marginStopkyTop = 100;
  int marginStopkyLeft = 50;


  int stopkyButtonY = marginStopkyTop + 50;

  float stopkyButtonWidth = textWidth(stopkyText) + buttonGap;

  int panelButtonY = stopkyButtonY + int(buttonHeight) + buttonGap;

  int startButtonX = marginStopkyLeft + buttonGap;
  float startButtonWidth = textWidth(startText) + buttonGap;

  int stopButtonX = startButtonX + int(startButtonWidth) + buttonGap;
  float stopButtonWidth = textWidth(stopText) + buttonGap;

  int resetButtonX = stopButtonX + int(stopButtonWidth) + buttonGap;
  float resetButtonWidth = textWidth(resetText) + buttonGap;  

  int stopkyWidth = int(startButtonWidth + stopButtonWidth + resetButtonWidth + 4*buttonGap);
 

  int stopkyButtonX = int(marginStopkyLeft + stopkyWidth/2 - stopkyButtonWidth/2);


  //vykreslení tlačítka STOPKY
  rect(stopkyButtonX, stopkyButtonY, stopkyButtonWidth, buttonHeight);
  text(stopkyText, stopkyButtonX + buttonGap/2, stopkyButtonY + buttonHeight - buttonGap);  

  if ((clicked) && (mouseX > stopkyButtonX) && (mouseX < stopkyButtonX + stopkyButtonWidth) && (mouseY > stopkyButtonY) && (mouseY < stopkyButtonY + buttonHeight)) {
    rozbalitStopky = true;   
    
  }

  if (clicked && rozbalitStopky) {

    rect(startButtonX, panelButtonY, startButtonWidth, buttonHeight);
    text(startText, startButtonX + buttonGap/2, panelButtonY + buttonHeight - buttonGap);


    rect(stopButtonX, panelButtonY, stopButtonWidth, buttonHeight);
    text(stopText, stopButtonX + buttonGap/2, panelButtonY + buttonHeight - buttonGap);  


    rect(resetButtonX, panelButtonY, resetButtonWidth, buttonHeight);
    text(resetText, resetButtonX + buttonGap/2, panelButtonY + buttonHeight - buttonGap);
  }
}

void mouseClicked() {
  clicked = true;
}
