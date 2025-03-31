// Gabriel Altshuler
// Unit 4 - Checkpoint 1

void setup() {
  size(800, 800);

  function(0,0, 1);
}

void function(float x, float y, float s) {
  pushMatrix();
  translate(x/2, y/2);
  scale(s);
  fill(130, 75, 0);
  stroke(130,75,0);
  quad(405,300,445,300,450,500,400,500);
  quad(400,500,380,530,400,520,420,500);
  quad(430,500,450,520,470,530,450,500);
  quad(420,500,430,520,440,530,430,500);
  fill(60,160,0);
  stroke(60,200,0);
  circle(390,270,110);
  circle(370,300,100);
  circle(430,250,120);
  circle(470,305,100);
  popMatrix();
}
