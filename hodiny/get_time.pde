void getTime() { 
    String hour;
    String minute;
    String second;
    
    if(hour() < 10) {
        hour= "0" + str(hour());
 } else {
        hour= str(hour());
 }
    
    if(minute() < 10) {
        minute = "0" + str(minute());
 } else {
        minute = str(minute());
 }
    
    if(second() < 10) {
        second = "0" + str(second());
 } else {
        second = str(second());
 }  
    
    String time = hour + ":" + minute + ":" + second;  
    String date = str(day()) + "/" + str(month()) + "/" + str(year());
    
    textSize(60);
    float timePoz = width / 2 - textWidth(time) / 2;
    float timeHeight = textAscent() + textDescent();
    text(time, timePoz, timeHeight);
    
    textSize(40);
    float datePoz = width / 2 - textWidth(date) / 2;
    float dateHeight = textAscent() + textDescent();
    text(date, datePoz, dateHeight + timeHeight + 10);
}  
