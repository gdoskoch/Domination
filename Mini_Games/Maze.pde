PImage knight;
float x=40;
float y=400;
float ye=25;
float x1=750;
float y1=387.5;
float x2=750;
float y2=412.5;

void setup() {
  size(800, 800);
  knight = loadImage("knight.png");
}

void draw() {
  background(255, 255, 255);
  image(knight, x, y, 25, 25);
  fill(0);
  strokeWeight(20);
  for (int i=1; i<11; i++) {
    line(i*70+10, 50, i*70+10, i*30);
    //You shall not pass!
    if (x<i*70+10+10) {
      if (x>i*70+10-10) {
        if (y>50-20) {
          if (y<i*30+20) {
            if (x>i*70+10) {
              x=x+35;
            }
            if (x<i*70-10) {
              x=x+35;
            }
          }
        }
      }
    }
  }
  for (int i=1; i<11; i++) {
    line(i*70+10, 750, i*70+10, 800-i*30);
    //You shall not pass!
        if (x<i*70+10+10) {
          if (x>i*70+10-10) {
            if (y>800-i*30) {
              if (y<750) {
                if (x>i*70+10) {
                  x=x+35;
                }
              }
            }
          }
        }
  }
  for (int i=1; i<9; i++) {
    line(i*70+10, i*30+75, i*70+10, 800-i*30-75);
  }
  for (int i=1; i<10; i++) {
    strokeWeight(1);
    ellipse(i*70+10+35, 25, 25, 25);
  }
  for (int i=1; i<10; i++) {
    fill(11, 24, 237);
    strokeWeight(1);
    ellipse(i*70+10+35, ye, 10, 10);
    ye=ye+0.25;
    if (ye>800) {
      ye=25;
    }
  }
  fill(0);
  ellipse(750, 387.5, 25, 25);
  ellipse(750, 412.5, 25, 25);
  fill(11, 24, 237);
  ellipse(x1, y1, 10, 10);
  y1=y1-1;
  x1=x1-2;
  if (x1<0) {
    x1=750;
    y1=387.5;
  }
  ellipse(x2, y2, 10, 10);
  y2=y2+1;
  x2=x2-2;
  if (x2<0) {
    x2=750;
    y2=412.5;
  }
  if (keyPressed==true) {
    if (key == CODED) {
      if (keyCode == RIGHT) {
        x=x+2;
      }
      if (keyCode == LEFT) {
        x=x-2;
      }
      if (keyCode == DOWN) {
        y=y+2;
      }
      if (keyCode == UP) {
        y=y-2;
      }
    }
  }
}
