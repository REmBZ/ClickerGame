import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

//target variables
float x, y, r; //target info
float vx, vy; //velocity
int score, lives, highscore;

//option variables
float sliderY;
PImage honkai, honkai2, honkai3;
PImage selectedHonkai;

//sound variables
Minim minim;
AudioPlayer theme, coin, bump,  gameover;



void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  x = 400;
  y = 200;
  r = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
 honkai = loadImage("honkaitarget1.png");
 honkai2 = loadImage("honkaitarget2.png");
 honkai3 = loadImage("honkaitarget3.png");
 selectedHonkai = honkai2;
  sliderY = 400;
 
  imageMode(CENTER);
  score = 0;
  lives = 3;
  reset();
  highscore = 0;

  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE ) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}
