void options() {
  background(100);
  fill(255);
  stroke(0);
  strokeWeight(2);
  
  tactile4(50, 75, 225);
  square(150, 175, 225); //skin1
  image(honkai, 150, 175, 110, 110); 
  
  tactile5(300, 75, 225);
  square(400, 175, 225); //skin2
  image(honkai2, 400, 175, 110, 110); 
  
  tactile6(550, 75, 225);
  square(650, 175, 225); //skin3
  image(honkai3, 650, 175, 110, 110); 
  
  tactile7(500, 650, 150, 100);
  rect(600, 700, 125, 75); //back button
  fill(0);
  text("Back", 600, 700);
  
 
  
  strokeWeight(5);
  tactile(585, 300, 30, 300);
  line(600, 400, 600, 600);
  circle(600, sliderY, 30);
  
  
  

   stroke(255);
   fill(255);
   circle(250, 500, r); //selector
  image(selectedHonkai, 250, 500,  110, 110); 
  
  strokeWeight(2);
}

void mouseDragged() {
  controlSlider();
}

void optionsClicks() {
  if (mouseX > 500 && mouseX < 700 && mouseY > 600 && mouseY < 750) {
    mode = INTRO;
    
  }
  if (dist(150, 175, mouseX, mouseY) < 100) {
    selectedHonkai = honkai;
  }
  if (dist(450, 175, mouseX, mouseY) < 100) {
    selectedHonkai = honkai2;
  }
  if (dist(650, 175, mouseX, mouseY) < 100) {
    selectedHonkai = honkai3;
  }
}
