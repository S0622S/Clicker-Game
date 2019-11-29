void option() {
  background(255);
  circle();
  line(100, 600, 700, 600);
  ellipse(ccx, 600, 50, 50);
   if (dist(ccx, 600, mouseX, mouseY) <= 25 && mousePressed) {
    ccx = mouseX;
  }
  //rect();
}

void optionClicks() {
  
}
