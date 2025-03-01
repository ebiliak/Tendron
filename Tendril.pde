class Tendril {
  public final static int SEG_LENGTH = 4; 
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  public Tendril(int len, double theta, int x, int y) {
   fill(255,232,232);
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  
  public void show() {
    float startX = myX;
    float startY = myY;

    for (int i = 0; i < myNumSegments; i++) {
      myAngle += random(-0.2, 0.2); 
      
      float endX = startX + cos((float) myAngle) * SEG_LENGTH;
      float endY = startY + sin((float) myAngle) * SEG_LENGTH;
      
      strokeWeight(map(myNumSegments, 3, 50, 1, 4)); 
      stroke(0);
      line(startX, startY, endX, endY);
      
      startX = endX;
      startY = endY;
    }
    
    
    if (myNumSegments >= 6) {
      new Cluster(myNumSegments / 2, (int)startX, (int)startY).show();
    }
  }
}
