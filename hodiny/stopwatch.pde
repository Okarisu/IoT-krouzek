void stopwatch() {

  /*VAR - stopky*/

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

  String timeToDisplay = str(printTime);



  /*CODE - stopky*/

  //vykreslení tlačítka STOPKY
  rect(stopkyButtonX, stopkyButtonY, stopkyButtonWidth, buttonHeight);
  text(stopkyText, stopkyButtonX + buttonGap / 2, stopkyButtonY + buttonHeight - buttonGap);

  if ((clicked) && (!stopkyBylyRozbaleny) && (mouseX > stopkyButtonX) && (mouseX < stopkyButtonX + stopkyButtonWidth) && (mouseY > stopkyButtonY) && (mouseY < stopkyButtonY + buttonHeight)) {
    rozbalitStopky = true;
    stopkyBylyRozbaleny = true;
    clicked = false;
  }

  if ((clicked) && (stopkyBylyRozbaleny) && (mouseX > stopkyButtonX) && (mouseX < stopkyButtonX + stopkyButtonWidth) && (mouseY > stopkyButtonY) && (mouseY < stopkyButtonY + buttonHeight)) {
    rozbalitStopky = false;
    stopkyBylyRozbaleny = false;
    clicked = false;
  }
  if (rozbalitStopky) {




    float stopkyNumX = stopkyWidth/2 - textWidth(timeToDisplay)/2;
    float stopkyNumY = panelButtonY + textAscent() + textDescent() + 80;

    rect(startButtonX, panelButtonY, startButtonWidth, buttonHeight);
    text(startText, startButtonX + buttonGap / 2, panelButtonY + buttonHeight - buttonGap);

    rect(stopButtonX, panelButtonY, stopButtonWidth, buttonHeight);
    text(stopText, stopButtonX + buttonGap / 2, panelButtonY + buttonHeight - buttonGap);

    rect(resetButtonX, panelButtonY, resetButtonWidth, buttonHeight);
    text(resetText, resetButtonX + buttonGap / 2, panelButtonY + buttonHeight - buttonGap);

    textSize(80);
    text(timeToDisplay, stopkyNumX, stopkyNumY);

    //println("printTime= "+printTime+","+pauseLength/1000);
  }


  //START
  if ((clicked) && (stopkyBylyRozbaleny) && (mouseX > startButtonX) && (mouseX < startButtonX + startButtonWidth) && (mouseY > panelButtonY) && (mouseY < panelButtonY + buttonHeight)) {
    if (firstClick) {
      pauseLength = pauseLength + (millis() - pauseTimeStart);
    }

    if (!firstClick) {
      stopkyTimeStart = millis();
      println("click");
      firstClick = true;
    }       
    runStopwatch = true;
    clicked = false;
    println("START");
  }

  //STOP
  if ((clicked) && (stopkyBylyRozbaleny) && (mouseX > stopButtonX) && (mouseX < stopButtonX + stopButtonWidth) && (mouseY > panelButtonY) && (mouseY < panelButtonY + buttonHeight)) {
    pauseTimeStart = millis();    
    runStopwatch = false;
    println("STOP");      
    clicked = false;
  }

  //RESET
  if ((clicked) && (stopkyBylyRozbaleny) && (mouseX > resetButtonX) && (mouseX < resetButtonX + resetButtonWidth) && (mouseY > panelButtonY) && (mouseY < panelButtonY + buttonHeight)) {
    runStopwatch = false;
    printTime = 0;
    pauseLength = 0;      
    pauseTimeStart = 0;
    stopkyTimeStart = 0;
    firstClick = false;
    clicked = false;
  }

  if (runStopwatch) {    
    printTime = (millis() - stopkyTimeStart - pauseLength)/1000;
  }
}
