void option() {
  background(255);
  //circle();
  stroke(0);
  fill(white);
  strokeWeight(2);
  ellipse(x, 300, diameter, diameter);
  stroke(0);
  
  //slider
  line(100, 600, 700, 600);
  fill(255);
  ellipse(ccx, 600, 50, 50);

  if (dist(ccx, 600, mouseX, mouseY) <= 35 && mousePressed) {
    ccx = mouseX;
  } 
  if (ccx < 100) {
    ccx = 100;
  }
  if (ccx > 700) {
    ccx = 700;
  }
  diameter = map(ccx, 100, 600, 50, 150);
  //rect();
  rect(60, 60, 80, 80);
  image(img2, 10, 10, 100, 100);
}

void optionClicks() {
  //  if (mouseX >= 
  if (dist(x, 300, mouseX, mouseY) <= diameter / 2) {
    white = black;
  }
  if (dist(x, 300, mouseX, mouseY) <= diameter / 2) {
    black = blue;
  }
  if (dist(x, 300, mouseX, mouseY) <= diameter / 2) {
    blue = lightgreen;
  }
  if (dist(x, 300, mouseX, mouseY) <= diameter / 2) {
    lightgreen = red;
  }
  if (dist(x, 300, mouseX, mouseY) <= diameter / 2) {
    red = white;
  }
  if (mouseX >= 20 && mouseX <= 100 && mouseY >= 20 && mouseY <= 100) {
    mode = INTRO;
  }
}
