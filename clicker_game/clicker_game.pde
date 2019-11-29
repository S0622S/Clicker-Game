int mode;
final int INTRO = 0;
final int OPTION = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

float vx, vy;

float x, y; //target composition
int score, lives;

void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);

  //initialize target
  x = width/2;
  y = height/2;
  
  vx = random(-1, 1);
    if (vx <= 0) {
      vx = -1;
    } else {
      vx = 1;
    }
    vy = random(-1, 1);
    if (vy <= 0) {
      vy = -1;
    } else {
      vy = 1;
    }

  score = 0;
  lives = 3;
}

//////////////////////////////////////////////////////////////////////////////////////

void draw() {
  if (mode == INTRO) {
    introscreen();
  } else if (mode == OPTION) {
    option();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode Error: Mode is " + mode);
  }
  //if (mode == GAMEOVER) {
  //lives = 3;
  //}
  
}
