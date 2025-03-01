class Tendron {
  public void generate() {
    background(255);
    Cluster c = new Cluster(50, width / 2, height / 2);
    c.show();
  }
}

void setup() {
  size(500, 500);  
  background(255);
  noLoop();
}

void draw() {
  fill(255,232,232);
  Tendron t = new Tendron();
  t.generate();
}

void mousePressed() {
  redraw();
}
