class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    myXspeed = theShip.getmyXspeed();
    myYspeed = theShip.getmyYspeed();
    accelerate(1.0);
  }
  
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  public double getPointDirection(){return myPointDirection;}
  
  public void show(){
    fill(color((int)(Math.random()*55+200), (int)(Math.random()*50+60), (int)(Math.random()*44 +220)));
    ellipse((float)myCenterX, (float)myCenterY+3, (float)5, (float)5);
    ellipse((float)myCenterX-4, (float)myCenterY, (float)5, (float)5);
    ellipse((float)myCenterX+4, (float)myCenterY, (float)5, (float)5);
    ellipse((float)myCenterX-2, (float)myCenterY-4, (float)5, (float)5);
    ellipse((float)myCenterX+2, (float)myCenterY-4, (float)5, (float)5);
    fill(255);
    ellipse((float)myCenterX, (float)myCenterY, (float)4, (float)4);
  }
}
