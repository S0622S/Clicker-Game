void introscreen() {
  background(255);
  fill(255);
  stroke(0);
  strokeWeight(2);

  //click box
  if (mouseX >= 300 && mouseX <= 500 && mouseY >= 350 && mouseY <= 450) {
    fill(#A5A3A3);
  } else {
    fill(255);
  }
  rect(400, 400, 200, 100); 
  fill(255);

  //easy box
  if (mouseX >= 350 && mouseX <= 450 && mouseY >= 475 && mouseY <= 525) {
    fill(#A5A3A3);
  } else {
    fill(255);
  }
  rect(400, 500, 100, 50); 
  fill(255);

  //normal box
  if (mouseX >= 350 && mouseX <= 450 && mouseY >= 545 && mouseY <= 595) {
    fill(#A5A3A3);
  } else {
    fill(255);
  }
  rect(400, 570, 100, 50); 
  fill(255);

  //hard bow
  if (mouseX >= 350 && mouseX <= 450 && mouseY >= 615 && mouseY <= 665) {
    fill(#A5A3A3);
  } else {
    fill(255);
  }
  rect(400, 640, 100, 50);
  fill(255);

  //words
  fill(0);
  textSize(50);
  strokeWeight(10);
  text("CLICK!!", 400, 400);
  textSize(20);
  text("EASY", 400, 500);
  text("NORMAL", 400, 567);
  text("HARD", 400, 636);

  //option box
  fill(255);
  strokeWeight(1);
  rect(738, 718, 90, 90);

  image(img1, 700, 680, 80, 80);
}



void introscreenClicks() {
  if (mouseX >= 300 && mouseX <= 500 && mouseY >= 350 && mouseY <= 450) {
    mode = GAME;
  }

  //easymode
  if (mouseX >= 350 && mouseX <= 450 && mouseY >= 475 && mouseY <= 525) {
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
  }

  //medium mode
  if (mouseX >= 350 && mouseX <= 450 && mouseY >= 545 && mouseY <= 595) {
    vx = random(-3, 3);
    if (vx <= 0) {
      vx = -3;
    } else {
      vx = 3;
    }
    vy = random(-3, 3);
    if (vy <= 0) {
      vy = -3;
    } else {
      vy = 3;
    }
  }

  if (mouseX >= 350 && mouseX <= 450 && mouseY >= 615 && mouseY <= 665) {
    vx = random(-5, 5);
    if (vx <= 0) {
      vx = -5;
    } else {
      vx = 5;
    }
    vy = random(-5, 5);
    if (vy <= 0) {
      vy = -5;
    } else {
      vy = 5;
    }
  }
  if (mouseX >= 648 && mouseX <= 828 && mouseY >= 628 && mouseY <= 808) {
    mode = OPTION;
  }
}
