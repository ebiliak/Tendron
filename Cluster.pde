class Cluster {
  public final static int NUM_STEMS = 6; 
  private Tendril[] tendrils;
  
  public Cluster(int len, int x, int y) {
    tendrils = new Tendril[NUM_STEMS];
    
    for (int i = 0; i < NUM_STEMS; i++) {
      double angle = i * (TWO_PI / NUM_STEMS);
      tendrils[i] = new Tendril(len, angle, x, y);
    }
  }
  
  public void show() {
    for (Tendril t : tendrils) {
      t.show();
    }
  }
}
