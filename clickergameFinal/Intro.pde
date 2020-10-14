void intro() {
  theme.play();
  
  background(255);
  //Start Button
  tactile(300, 400, 200, 150);
  stroke(0);
  rect(400, 500, 200, 100);

  fill(0);
  textSize(50);
  textAlign(CENTER, CENTER);
  text("Clicker Game", 400, 350);
  
  text("Start", 400, 490);
  
  //OPtions BUtton
  tactile3(300, 545, 200, 150);
  stroke(0);
  rect(400, 625, 200, 100);
  
  fill(0);
  text("Options", 400, 620);
  
  
}

void introClicks() {
  if (mouseX > 300 && mouseX < 600 && mouseY > 400 && mouseY < 600) {
    mode = GAME;
  }
  if (mouseX > 300 && mouseX < 600 && mouseY > 600 && mouseY < 700) {
    mode = OPTIONS;
  }
}
