void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(200);
  } else {
    fill(255);
  }
}

void tactile2(int x1, int y1, int w1, int h1) {
  if (mouseX > x1 && mouseX < x1+w1 && mouseY > y1 && mouseY < y1+h1) {
    fill(200);
  } else {
    fill(255);
  }
}

void tactile3(int x2, int y2, int w2, int h2) {
  if (mouseX > x2 && mouseX < x2+w2 && mouseY > y2 && mouseY < y2+h2) {
    fill(200);
  } else {
    fill(255);
  }
}

void tactile4(int x3, int y3, int w3) {
  if (mouseX > x3 && mouseX < x3+w3 && mouseY > y3 && mouseY < y3+w3) {
    fill(200);
  } else {
    fill(255);
  }
}

void tactile5(int x4, int y4, int w4) {
  if (mouseX > x4 && mouseX < x4+w4 && mouseY > y4 && mouseY < y4+w4) {
    fill(200);
  } else {
    fill(255);
  }
}

void tactile6(int x5, int y5, int w5) {
  if (mouseX > x5 && mouseX < x5+w5 && mouseY > y5 && mouseY < y5+w5) {
    fill(200);
  } else {
    fill(255);
  }
}

void tactile7(int x6, int y6, int w6, int h6) {
  if (mouseX > x6 && mouseX < x6+w6 && mouseY > y6 && mouseY < y6+h6) {
    fill(200);
  } else {
    fill(255);
  }
}


 void controlSlider() {
    if (mouseY > 400 && mouseY < 600 && mouseX > 585 && mouseX < 615) {
    sliderY = mouseY;
  }
  
  r = map(sliderY, 300, 600, 100, 300);
  
 }
 
void reset() {
  //target
  x = width/2;
  y = height/2;
  r = 200;
  vx = random(-5, 5);
  vy = random(-5, 5);
  
    //game initialization
  score = 0;
  lives = 3;
  sliderY = 450;
}

//void mouseDragged() {
//  controlSlider();
//}
