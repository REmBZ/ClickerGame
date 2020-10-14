void gameover() {
  background(0);
  theme.pause();
  gameover.play();
  
  
  fill(255);
  tactile2(650, 700, 100, 50);
  rect(650, 710, 150, 75);
  fill(255, 0, 0);
  textAlign(CENTER, CENTER);
  text("Game Over", 400, 400);
  text("Quit", 650, 700);
  text("High Score: " + highscore, width/2, 600);
  
  if (score > highscore) {
    highscore = score;
  }
}

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
  if (mouseX > 650 && mouseX < 750 && mouseY > 700 && mouseY < 750) {
    exit();
  }
  
reset();
}
