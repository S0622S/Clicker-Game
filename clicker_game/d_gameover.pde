void gameover() {
  background(255, 0, 0);
  text("LOSER", 400, 400);
}

void gameoverClicks() {
  mode = INTRO;
  x = width/2;
  y = height/2;
}
