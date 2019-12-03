void gameover() {
  background(255, 0, 0);
  text("LOSER", 400, 400);

  // text("High score: " + highscore, 400, 200);

  if (score > highscore) {
    highscore = score;
  }

  text("High score; " + highscore, 400, 200);
}

void gameoverClicks() {
  mode = INTRO;
  x = width/2;
  y = height/2;
  lives = 3;
  score = 0;
}
