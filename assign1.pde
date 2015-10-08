/* please implement your assign1 code in this file. */
PImage backgroundImgLeft, backgroundImgRight, enemy, fighter, hp, treasure;
int x1, y1, hpBarXposition, x2, y2, x3, y3, x4, y4, speedX, speedY;

void setup () {
  size(640,480) ;  // must use this size.
  backgroundImgLeft = loadImage("img/bg1.png");
  backgroundImgRight = loadImage("img/bg2.png");
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  x1 = floor(random(0, 640));
  y1 = floor(random(0, 480));
  hpBarXposition = floor(random(0, 210));
  x2 = 0;
  y2 = floor(random(0, 480));
  speedX = 2;
  speedY = 0;
  x3 = -640;
  y3 = 0;
  x4 = 0;
  y4 = 0;
}

void draw() {
  background(0);
  image(backgroundImgLeft, x3, y3);
  x3 += speedX;
  x3 %= 640;
  image(backgroundImgRight, x4, y4);
  x4 += speedX;
  x4 %= 640;
  image(fighter, 580, 240);
  image(treasure, x1, y1);
  image(enemy, x2, y2);
  x2 += speedX;
  x2 %= 640;
  rectMode(CORNERS);
  fill(255, 0, 0);
  rect(10, 5, hpBarXposition ,30);
  image(hp, 5, 5);
}
