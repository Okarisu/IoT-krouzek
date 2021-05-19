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
    
    
    
    
    
    /*CODE - stopky*/
    
    //vykreslení tlačítka STOPKY
    rect(stopkyButtonX, stopkyButtonY, stopkyButtonWidth, buttonHeight);
    text(stopkyText, stopkyButtonX + buttonGap / 2, stopkyButtonY + buttonHeight - buttonGap);
    
    if ((clicked) && (!stopkyBylyRozbaleny) && (mouseX > stopkyButtonX) && (mouseX < stopkyButtonX + stopkyButtonWidth) && (mouseY > stopkyButtonY) && (mouseY < stopkyButtonY + buttonHeight)) {
        //delay(500);
        rozbalitStopky = true;
        //zabalitStopky = false;
        stopkyBylyRozbaleny = true;
        clicked = false;
        println("rozbaleno");
}
    
    if ((clicked) && (stopkyBylyRozbaleny) && (mouseX > stopkyButtonX) && (mouseX < stopkyButtonX + stopkyButtonWidth) && (mouseY > stopkyButtonY) && (mouseY < stopkyButtonY + buttonHeight)) {
        //delay(500);
        rozbalitStopky = false;
        //zabalitStopky = true;
        stopkyBylyRozbaleny = false;
        clicked = false;
        println("zabaleno");
}
    if (rozbalitStopky) {
        
        rect(startButtonX, panelButtonY, startButtonWidth, buttonHeight);
        text(startText, startButtonX + buttonGap / 2, panelButtonY + buttonHeight - buttonGap);
        
        rect(stopButtonX, panelButtonY, stopButtonWidth, buttonHeight);
        text(stopText, stopButtonX + buttonGap / 2, panelButtonY + buttonHeight - buttonGap);
        
        rect(resetButtonX, panelButtonY, resetButtonWidth, buttonHeight);
        text(resetText, resetButtonX + buttonGap / 2, panelButtonY + buttonHeight - buttonGap);
        //rozbalitStopky = false;
}
    
    
    
    if ((clicked) && (stopkyBylyRozbaleny) && (mouseX > startButtonX) && (mouseX < startButtonX + startButtonWidth) && (mouseY > panelButtonY) && (mouseY < panelButtonY + buttonHeight)) {
        if (!stopwatchReturn) {
            stopkyTimeStart = millis();    
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
    
    if ((clicked) && (stopkyBylyRozbaleny) && (mouseX > stopButtonX) && (mouseX < stopButtonX + stopButtonWidth) && (mouseY > panelButtonY) && (mouseY < panelButtonY + buttonHeight)) {
        pauseTimeStart = millis();
        stopStopwatch = true;
        //println(pauseTime);
        println("STOP");
        
        /*Return to run*/
        //stopwatchReturnTime = true;
        stopwatchReturn = true;
        
        clicked = false;
}
        
        if (runStopwatch) {
        printTime = (millis() - stopkyTimeStart - pauseLength)/1000;
        println("printTime= "+printTime);
} 
        if (stopStopwatch) {
        runStopwatch = false;
        pauseLength = (millis() - pauseTimeStart)/1000;
        
        keepPausedTime = printTime;
        printTime = keepPausedTime;//uložení času, aby mohl být vypisován během pauzy
        
        
        println("print(stopped)Time= "+printTime);
} 
        
   }
        */
        