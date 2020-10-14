void pause() {
  theme.pause();
  fill(0);
  text("Pause", 400, 400);
   stroke(0);
  fill(255);
  circle(100, 100, 75);
   fill(0);
   text(">", 105, 90);
}

void pauseClicks() {
  if (dist(mouseX, mouseY, 100, 100) < 37.5) {
    mode = GAME;
  }
}
