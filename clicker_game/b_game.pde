void game() {
  background(0, 255, 0);

  //scoreboard
  fill(0);
  text("Score; " + score, 400, 300);
  text("Lives; " + lives, 400, 200);

  x = x + vx;
  y = y + vy;

  if (y < 50 || y > 750 ) vy = vy * -1; //or -vy
  if (x < 50 || x > 750) vx = vx * -1;
  
  circle();
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < 50) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    //score++;
  } else {
    lives = lives - 1;
    if (lives == 0) {
      mode = GAMEOVER;
      lives = 3;
      score = 0;
      //x = x + vx;
    }
    //if (score % 30 == 0) {
    //vx = vx *1.1;
    //vy = vy * 1.1;
    //}
  }
}

void circle(){
   //drawing the target
  stroke(0);
  fill(white);
  strokeWeight(2);
  ellipse(x, y, diameter, diameter);
}
  
