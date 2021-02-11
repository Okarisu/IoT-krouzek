void setup() {
  background(0);
  size(600, 600);
}

void draw() {
 
  if (mousePressed && (mouseButton == LEFT)) {
    stroke(255);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else if (mousePressed && (mouseButton == RIGHT)) {
    strokeWeight(20);
    stroke(0);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}
