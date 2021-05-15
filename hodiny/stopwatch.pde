void stopwatch() { 
    
    textSize(40);
    noFill();    
    
    //draw STOPWATCH
    rect(stopkyButtonX, stopkyButtonY, stopkyButtonWidth, buttonHeight);
    text(stopkyText, stopkyButtonX + buttonGap / 2, stopkyButtonY + buttonHeight - buttonGap);
    
    /*Unpack stopwatch logic*/
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
    
    /*Unpack stopwatch*/
    if (rozbalitStopky) {
        
        rect(startButtonX, panelButtonY, startButtonWidth, buttonHeight);
        text(startText, startButtonX + buttonGap / 2, panelButtonY + buttonHeight - buttonGap);
        
        rect(stopButtonX, panelButtonY, stopButtonWidth, buttonHeight);
        text(stopText, stopButtonX + buttonGap / 2, panelButtonY + buttonHeight - buttonGap);
        
        rect(resetButtonX, panelButtonY, resetButtonWidth, buttonHeight);
        text(resetText, resetButtonX + buttonGap / 2, panelButtonY + buttonHeight - buttonGap);
  }
      
      
      /*START stopwatch*/
      if ((clicked) && (stopkyBylyRozbaleny) && (mouseX > startButtonX) && (mouseX < startButtonX + startButtonWidth) && (mouseY > panelButtonY) && (mouseY < panelButtonY + buttonHeight)) {
      if(!stopwatchReturn) {
      stopkyTimeStart = millis(); //save time of start
      runStopwatch = true;
      pauseTimeStart = 0;
  } else if (stopwatchReturn) {        
      runStopwatch = true;
      //stopwatchReturnTime = false;
      stopwatchReturn = false;
      stopStopwatch = false;
  }
      
      clicked = false;
  }
      /*STOP stopwatch*/
      if ((clicked) && (stopkyBylyRozbaleny) && (mouseX > stopButtonX) && (mouseX < stopButtonX + stopButtonWidth) && (mouseY > panelButtonY) && (mouseY < panelButtonY + buttonHeight)) {
          pauseTimeStart = millis();
          stopStopwatch = true;
          println("STOP");
          
          /*Return to run */ 
          stopwatchReturn = true;
          
          clicked = false;
      }
          
          if(runStopwatch) {
          printTime = (millis() - stopkyTimeStart - pauseLength) / 1000; //counting elapsed time
          println("Uběhlo " + printTime);
      } 
          if (stopStopwatch) {
          runStopwatch = false;
          pauseLength = (millis() - pauseTimeStart) / 1000; //counting elapsed time in pause
          
          keepPausedTime = printTime;
          printTime = keepPausedTime; //uložení času, aby mohl být vypisován během pauzy
          
          
          println("(stopped)Time= " + printTime);
      } 
          /* if(runStoppedStopwatch) {
          printTime = (millis() - stopkyTimeStart - pauseLength);
      }
          */
      }
         