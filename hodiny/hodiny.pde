void mouseClicked() {
  clicked = true;
}

void setup() {
  size(1080, 720);
  background(0);
  stroke(255);
  surface.setResizable(true);
}

void draw() {
  background(0);
  getTime();
  stopwatch();
}
