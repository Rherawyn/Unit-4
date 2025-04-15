//Gabriel Altshuler
//Unit 4 Project 2-4

float y;
float x;
float l;
float r;
float b;
float w;

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
  w = 0;
  x = -75;
  y = 200;

  for (int i = 0; i < 30; i += 1) {
    tree(x+=random(75, 150), y+random(-20, 20), random(0.6, 0.7), 0);
    if (x>200 && x<775 && y>300 && y<650) {
      x=775;
    } else if (x>1200) {
      x=-75;
      y=y+100;
    }
  }

  for (int h = 0; h < random(4, 6); h += 1) {
    house(random(400, 850), random(475, 700), random(0.5, 0.6), 0);
  }

  for (int i = 0; i < 40; i += 1) {
    tree(x+=random(75, 150), y+random(-20, 20), random(0.6, 0.7), 0);
    if (x>200 && x<775 && y>300 && y<650) {
      x=775;
    } else if (x>1200) {
      x=-75;
      y=y+100;
    }
  }
}

// TREE STUFF ============================================================
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
  b = 0;
  popMatrix();
}

void roots(int x, int y) {
  fill(116, 61, 23);
  strokeWeight(10);
  stroke(120, 65, 23);
  r = 0;
  while (r<random(2, 4)) {
    line(random(400, 450), 575, random(375, 475), random(585, 615));
    r=r+1;
  }
}
void branches(int x, int y) {
  fill(116, 61, 23);
  strokeWeight(10);
  stroke(120, 65, 23);
  while (b<random(2, 4)) {
    line(random(405, 445), 400, random(325, 525), random(325, 410));
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
  fill(random(0, 100), random(0, 255), random(0, 255), random(100, 200));
  strokeWeight(3);
  stroke(random(0, 100), random(0, 255), random(0, 255));
  while (l<random(5, 10)) {
    circle(random(325, 525), random(325, 410), random(60, 100));
    l = l+1;
  }
}//end of tree stuff ==================================================================

//HOUSE STUFF

void house(float x, float y, float s, float r) {
  pushMatrix();
  translate(x-300, y-300);
  scale(s);
  radians(r);
  chimney(x, y);
  wall(x, y);
  roof(x, y);
  window(x, y);
  door(x, y);
  w = 0;
  popMatrix();
}

void wall(float x, float y) {
  fill(random(0, 255), random(0, 255), random(0, 100));
  stroke(random(0, 255), random(0, 255), random(0, 100));
  rect(300, 300, 200, 200);
}

void roof(float x, float y) {
  fill(random(0, 255), random(0, 255), random(0, 100));
  triangle(270, 300, 530, 300, 400, random(200, 280));
}

void chimney(float x, float y) {
  rect(random(300, 450), random(190, 220), 50, 100);
}

void window(float x, float y) {
  while (w<random(2)) {
    windowgood(random(350, 450), random(325, 400), random(0.9, 1.1));
    w = w+1;
  }
}

void door(float x, float y) {
  doorgood(random(300, 450), 425);
}

void windowgood(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);
  circle(0, 0, 50);
  line(0, -25, 0, 25);
  line(-25, 0, 25, 0);
  popMatrix();
}

void doorgood(float x, float y) {
  pushMatrix();
  translate(x, y);
  rect(0, 0, 50, 75);
  circle(random(5, 45), 30, 10);
  popMatrix();
}
