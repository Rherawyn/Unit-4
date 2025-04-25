//Gabriel Altshuler
//Unit 4 Project 2-4

float k;
float g;
int og;
float s;

float y;
float x;
float l;
float r;
float b;
float w;
float u;
float o;
float t;
int c;
int n;

void setup() {
  t = random(0, 1200);
  c = int(random(0, 3));
  k = int(random(2));
  if (k == 0) { // day or night variable
    if (c == 2) {
      //if (t >900) {
      //  background(167, 0, 255);
      //} else if (t < 300) {
      //  background(0, 248, 255);
      //} else {
      //  background(167, 248, 255);
      //}
      for ( int c = 0; c < 60; c += 1) { // clouds when it snows during the day
        cloud(random(-50, 1250), random(25, 125));
      }
    } else {
      if (t >900) {
        background(250, 150, 80);
      } else if (t < 300) {
        background(0, 248, 255);
      } else {
        background(167, 248, 255);
      }
      sun(t, random(50, 100), 0.8, random(0, 256)); // clouds any other time
      for ( int c = 0; c < random(3, 4); c += 1) {
        cloud(random(0, 1200), random(50, 100));
      }
    }
  } else {
    background(30, 0, 62);
    for ( int c = 0; c < random(15, 20); c += 1) { // stars at night
      star(random(0, 1200), random(0, 250), random(0.4, 0.5), random(0, 361));
    }
    moon(random(0, 1200), random(50, 100));
  }

  size(1200, 800);
  strokeWeight(3);
  if (c==0) { // variable for the differant colour tones
    fill(random(0, 100), 200, random(0, 100));//103, 222, 123
    stroke(random(0, 100), 200, random(0, 100));//94, 206, 113
  } else if (c==1) {
    fill(random(200, 250), random(125, 175), random(0, 50));
    stroke(random(200, 250), random(125, 175), random(0, 50));
  } else {
    fill(250, 250, random(250, 255));
    stroke(240, 240, random(240, 255));
  }
  ellipse(600, 550, 2000, 650); // ground
  g = 440;
  og = 440;
  s = 230;
  n = 760;
  l = 0;
  r = 0;
  b = 0;
  w = 0;
  u = 300;
  o = 480;
  x = -75;
  y = 200;

  for (int i = 0; i < 3675; i += 1) { // function for grass
    grass(g+=random(5, 15), s+random(3, 5));
    if (s < 270) {
      if (g>n) {
        g = og -= 150;
        n = n + 150;
        s = s+random(17, 20);
      }
    } else if (g>1200) {
      g = 0;
      s = s+random(17, 20);
    }
  }

  print(c);

  for (int i = 0; i < 30; i += 1) { // function for trees behind the houses
    tree(x+=random(75, 150), y+random(-20, 20), random(0.6, 0.7), 0);
    if (x>200 && x<775 && y>300 && y<650) {
      x=775;
    } else if (x>1200) {
      x=-75;
      y=y+100;
    }
  }

  for (int h = 0; h < random(4, 6); h += 1) { // function for houses
    house(u+=random(150, 200), o+random(30, 60), random(0.5, 0.6), 0);
    if (u>750) {
      u = 300;
      o = o+150;
    }
  }

  for (int i = 0; i < 40; i += 1) { // function for trees in front of the houses
    tree(x+=random(75, 150), y+random(-20, 20), random(0.6, 0.7), 0);
    if (x>200 && x<775 && y>300 && y<650) {
      x=775;
    } else if (x>1200) {
      x=-75;
      y=y+100;
    }
  }
  if (c==2) { // function for stars at night
    for ( int c = 0; c < random(3000, 5000); c += 1) {
      star(random(0, 1200), random(0, 800), random(0.1, 0.2), random(0, 361));
    }
  }
}

// TREE STUFF ============================================================
void tree(float x, float y, float s, float r) {
  pushMatrix();
  translate(x-300, y-250);
  scale(s);
  rotate(radians(r));
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
  strokeWeight(3);
  if (c==0) {
    fill(random(0, 100), random(0, 255), random(0, 255), random(100, 200));
    stroke(random(0, 100), random(0, 255), random(0, 255));
  } else if (c==1) {
    fill(random(0, 255), random(0, 250), random(0, 50), random(100, 200));
    stroke(random(0, 255), random(0, 250), random(0, 50));
  } else {
    fill(random(210, 240), random(240, 240), random(230, 250), random(100, 200));
    stroke(random(210, 240), random(240, 240), random(230, 250));
  }
  while (l<random(5, 10)) {
    circle(random(325, 525), random(325, 410), random(60, 100));
    l = l+1;
  }
}//end of tree stuff ==================================================================

//HOUSE STUFF  ========================================================================

void house(float x, float y, float s, float r) {
  pushMatrix();
  translate(x-300, y-300);
  scale(s);
  rotate(radians(r));
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
  fill(random(0, 255), random(0, 255), random(0, 100));
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
// END OF HOUSE STUFF =======================================================

//background stuff ============================================================

void cloud(float x, float y) {
  pushMatrix();
  translate(x, y);
  fill(250, 250, 250, random(175, 200));
  stroke(255, 255, 255, random(175, 200));
  strokeWeight(0);
  ellipse(random(-75, 75), random(-50, 50), random(50, 100), random(50, 100));
  ellipse(random(-75, 75), random(-50, 50), random(50, 100), random(50, 100));
  ellipse(random(-75, 75), random(-50, 50), random(50, 100), random(50, 100));
  ellipse(random(-75, 75), random(-50, 50), random(50, 100), random(50, 100));
  ellipse(random(-75, 75), random(-50, 50), random(50, 100), random(50, 100));
  popMatrix();
}

void moon(float x, float y) {
  pushMatrix();
  translate(x, y);
  fill(255);
  stroke(250);
  strokeWeight(3);
  circle(0, 0, 80);
  fill(30, 0, 62);
  stroke(30, 0, 62);
  circle(random(-40, 40), 0, 65);
  popMatrix();
}

void sun (float x, float y, float s, float r) {
  pushMatrix();
  translate(x, y);
  scale(s);
  rotate(radians(r));
  fill(random(230, 255), random(250, 255), 0);
  stroke(random(220, 255), random(230, 255), 0);
  strokeWeight(2);
  circle(0, 0, 80);
  for (int i = 0; i < 10; i += 1) {
    rotate(radians(36));
    triangle(-4, 50, 4, 50, 0, 75);
  }
  popMatrix();
}

void grass(float x, float y) {
  pushMatrix();
  translate(x, y);
  strokeWeight(3);
  if (c==0) {
    fill(random(0, 100), 200, random(0, 100));//103, 222, 123
    stroke(random(0, 100), 190, random(0, 100));//94, 206, 113
  } else if (c==1) {
    fill(random(200, 250), random(125, 175), random(0, 50));
    stroke(random(200, 250), random(125, 175), random(0, 50));
  } else {
    fill(240, 240, random(240, 250));
    stroke(240, 240, random(240, 255));
  }
  triangle(-2, 0, 2, 0, random(-1, 1), random(-14, -16));
  popMatrix();
}

void star(float x, float y, float s, float r) {
  pushMatrix();
  translate(x, y);
  scale(s);
  rotate(radians(r));
  stroke(240, 240, 255);
  strokeWeight(1);
  for (int i = 0; i < 2; i += 1) {
    rotate(radians(90));
    line(-50, 0, 50, 0);
  }
  pushMatrix();
  rotate(radians(45));
  noFill();
  square(-16, -16, 32);
  popMatrix();
  fill(255);
  for (int i = 0; i < 5; i += 1) {
    rotate(radians(72));
    triangle(-2, 10, 2, 10, 0, 25);
  }
  rotate(radians(36));
  for (int i = 0; i < 5; i += 1) {
    rotate(radians(72));
    triangle(-2, 5, 2, 5, 0, 20);
  }
  popMatrix();
}

// END OF BACKGROUND STUFF =======================================================
