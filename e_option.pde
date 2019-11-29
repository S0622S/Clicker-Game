void option() {
  background(255);
  circle();
  stroke(0);
  line(100, 600, 700, 600);
  fill(255);
  ellipse(ccx, 600, 50, 50);

  if (dist(ccx, 600, mouseX, mouseY) <= 35 && mousePressed) {
    ccx = mouseX;
  } 
  if (ccx < 100) {
    ccx = 100;
  }
  //rect();
  rect(60, 60, 80, 80);
  image(img2, 10, 10, 100, 100);
}

void optionClicks() {
  //  if (mouseX >= 
  if (dist(x, y, mouseX, mouseY) <= diameter / 2) {
    white = black;
  }
  if (dist(x, y, mouseX, mouseY) <= diameter / 2) {
    black = blue;
  }
  if (dist(x, y, mouseX, mouseY) <= diameter / 2) {
    blue = green;
  }
  if (dist(x, y, mouseX, mouseY) <= diameter / 2) {
    green = red;
  }
  if (dist(x, y, mouseX, mouseY) <= diameter / 2) {
    red = white;
  }
}
