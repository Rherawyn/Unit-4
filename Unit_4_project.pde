//Gabriel Altshuler
//Unit 4 Project 2-4

float y;
float x;
float l;
float r;
float b;

void setup() {
  background(167, 248, 255);
  size(1200, 800);
  fill(random(0, 100), 200, random(0, 100));//103, 222, 123
  strokeWeight(3);
  stroke(random(0, 100), 200, random(0, 100));//94, 206, 113
  ellipse(600, 550, 2000, 650);
  l = 0;
  r = 0;
  b = 0;
  x = -75;
  y = 200;

  for (int i = 0; i < 70; i += 1) {
    tree(x+=random(75, 150), y+random(-20, 20), random(0.6, 0.7), 0);
    if (x>200 && x<775 && y>300 && y<650) {
      x=775;
    } else if (x>1200) {
      x=-75;
      y=y+100;
    }
  }
}

void tree(float x, float y, float s, float r) {
  pushMatrix();
  translate(x-300, y-250);
  scale(s);
  radians(r);
  roots(0, 0);
  branches(0, 0);
  trunk(0, 0);
  leaves(0, 0);
  l = 0;
  r = 0;
  b = 0;
  popMatrix();
}

void roots(int x, int y) {
  fill(116, 61, 23);
  strokeWeight(10);
  stroke(120, 65, 23);
  while (r<random(2, 4)) {
    line(random(400,450),575,random(375,475),random(585,615));
    r=r+1;
  }
}
void branches(int x, int y) {
  fill(116, 61, 23);
  strokeWeight(10);
  stroke(120, 65, 23);
  while (b<random(2, 4)) {
    line(random(405,445),400,random(325,525),random(325,410));
    b=b+1;
  }
}

void trunk(int x, int y) {
  fill(116, 61, 23);
  strokeWeight(5);
  stroke(120, 65, 23);
  quad(405, 400, 445, 400, 450, 575, 400, 575);
}

void leaves(int x, int  y) {
  fill(random(0, 100), random(0, 255), random(0, 255));
  strokeWeight(3);
  stroke(random(0, 100), random(0, 255), random(0, 255));
  while (l<random(5, 10)) {
    circle(random(325, 525), random(325, 410), random(60, 100));
    l = l+1;
  }
}
