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

int stopkyWidth = int(startButtonWidth + stopButtonWidth + resetButtonWidth + 4 * buttonGap); 

int stopkyButtonX = int(marginStopkyLeft + stopkyWidth / 2 - stopkyButtonWidth / 2);