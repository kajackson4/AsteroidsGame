class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*200+100), (int)(Math.random()*130+50), (int)(Math.random()*255 +150));
  }
  public void show()
  {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, (int)(Math.random()*4+1), (int)(Math.random()*4+1));
  }
}
