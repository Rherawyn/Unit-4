//Gabriel Altshuler
//Unit 4 Project 2-4

float y;
float x;

void setup() {
  background(167, 248, 255);
  size(1200, 800);
  fill(random(0,100), 200, random(0,100));//103, 222, 123
  strokeWeight(3);
  stroke(random(0,100), 200, random(0,100));//94, 206, 113
  ellipse(600, 550, 2000, 650);
  x = -75;
  y = 200;

  for (int i = 0; i < 40; i += 1) {
    tree(x+=random(75,150), y+random(-20,20), random(0.6,0.7), 0);
    if (x>500) {
      x=-75;
      y=y+100;
    }
  }
}

void tree(float x, float y, float s, float r) {
  pushMatrix();
  translate(x, y);
  scale(s);
  radians(r);
  trunk(0, 0);
  leaves(0, 0);
  roots(0, 0);
  popMatrix();
}


void trunk(int x, int y) {
  fill(116, 61, 23);
  strokeWeight(5);
  stroke(120, 65, 23);
  quad(x+5, y, x+45, y, x+50, y+150, x, y+150);
}

void roots(int x, int y) {
  fill(116, 61, 23);
  strokeWeight(5);
  stroke(120, 65, 23);
  quad(x, y+150, x+20, y+150, x+5, y+170, x-15, y+180);
  quad(x+30, y+150, x+50, y+150, x+65, y+180, x+50, y+175);
}

void leaves(int x, int  y) {
  fill(random(0, 100), random(0, 255), random(0, 255));
  strokeWeight(2);
  stroke(random(0, 100), random(0, 255), random(0, 255));
  circle(x+25, y-30, random(60, 125));
  circle(x+30, y-50, random(60, 125));
  circle(x-30, y-20, random(60, 125));
  circle(x+70, y-15, random(60, 125));
  circle(x+20, y-5, random(40, 125));
}
