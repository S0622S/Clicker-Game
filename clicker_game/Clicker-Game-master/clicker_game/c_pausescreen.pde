void pause() {
  //vx = 0;
  //vy = 0;
  //ellipse(width/2, height/2, 200, 200);
  rect(400, 400, 400, 500);
}

void pausescreenClicks() {
  if (mouseX > 375 && mouseX < 425 && mouseY > 5 && mouseY < 55) {
    mode = GAME;
  }
}
