void game() {
  background(green);

  //scoreboard
  fill(0);
  text("Scores: " + score, 400, 300);
  text("Lives: " + lives, 400, 200);

  x = x + vx;
  y = y + vy;

  if (y < diameter/2 || y > width-diameter/2 ) vy = vy * -1; //or -vy
  if (x < diameter/2 || x > width-diameter/2) vx = vx * -1;

  circle();

  stroke(0);
  strokeWeight(1);
  rect(400, 30, 50, 50);
  image(img3, 375, 9, 50, 50);
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < diameter) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    //score++;
  } else {
    lives = lives - 1;
  }
  if (lives == 0) {
    mode = GAMEOVER;
    //x = x + vx;
  }
  //if (score % 30 == 0) {
  //vx = vx *1.1;
  //vy = vy * 1.1;
  //}

  if (mouseX > 375 && mouseX < 425 && mouseY > 5 && mouseY < 55) {
    mode = PAUSE;
  }
}

void circle() {
  //drawing the target
  stroke(0);
  fill(white);
  strokeWeight(2);
  ellipse(x, y, diameter, diameter);
}
