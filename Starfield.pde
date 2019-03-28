Star[] stars = new Star[4000];

float speed;

void setup() {
  fullScreen();
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw() {
  speed = map(mouseX, 0, width, 0, 100);
  translate(width/2, height/2);
  background(0);
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
}