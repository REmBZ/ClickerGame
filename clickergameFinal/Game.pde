void game() {
  background(200);
  
  
  //pause button
  strokeWeight(2);
  stroke(0);
  fill(255);
  circle(100, 100, 75);
  fill(0);
  text("||", 100, 90);
  
 
  
  fill(0);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  
  fill(255);
  stroke(255);
  circle(x, y, r);
  image(selectedHonkai, x + vx, y + vy, 110, 110);
  
  //movement
  x =x + vx;
  y = y + vy;
  
  //bounce
  if (x >= 750 || x <= 50) {
    vx = vx * -1;
  }
  if (y >= 750 || y <= 50) {
    vy = vy * -1;
  }
  
  strokeWeight(2);
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < r) {
    score = score +1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, 100, 100) < 37.5) {
    mode = PAUSE;
   
  } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    if (lives == 0) {
    mode = GAMEOVER;
    gameover.rewind();
    gameover.play();
    }
  }
  //mode = GAMEOVER;
}
