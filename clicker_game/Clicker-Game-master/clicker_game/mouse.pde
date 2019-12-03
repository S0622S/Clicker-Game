void mouseReleased() {
  if (mode == INTRO) {
    introscreenClicks();
  } else if (mode == OPTION) {
    optionClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pausescreenClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }
}
