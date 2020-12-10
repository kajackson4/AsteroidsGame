class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid(){
    rotSpeed = Math.random()*2 -1;
    corners = 4;
    xCorners = new int[6];
    yCorners = new int[6];
    xCorners[0] = 1;
    yCorners[0] = -7;
    xCorners[1] = 10;
    yCorners[1] = -8;
    xCorners[2] = 0;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -10;
    yCorners[4] = 10;
    xCorners[5] = -4;
    yCorners[5] = 1;
    
    myColor = color(255, 255, 153);
    myCenterX = Math.random()*400;
    myCenterY = Math.random()*400;
    myXspeed = Math.random()*2 - 1;
    myYspeed = Math.random()*2-1;
    myPointDirection = 0;

  }
  
   public double getX(){return myCenterX;}
   public double getY(){return myCenterY;}
   public double getPointDirection(){return myPointDirection;}
    
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
    
    
