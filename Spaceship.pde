class Spaceship extends Floater  
{   
    public Spaceship()
    {
      corners = 4;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -6;
      yCorners[0] = -6;
      xCorners[1] = 10;
      yCorners[1] = 0;
      xCorners[2] = -6;
      yCorners[2] = 6;
      xCorners[3] = -2;
      yCorners[3] = 0;
      myColor= color(255, 255, 255);
      myCenterX = myCenterY = 250;
      myXspeed = myYspeed = 0;
      myPointDirection = (int)(Math.random()*360);    
}

   public double getX(){return myCenterX;}
   public double getY(){return myCenterY;}
   public double getmyXspeed(){return myXspeed;}
   public double getmyYspeed(){return myYspeed;}
   public double getPointDirection(){return myPointDirection;}

   public void hyperspace(){
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = (int)(Math.random()*500);
      myCenterY = (int)(Math.random()*500);
      myPointDirection = (int)(Math.random()*360);
  
}
}
