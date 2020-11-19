//your variable declarations here
Spaceship nojo18 = new Spaceship();
Star [] flamingo = new Star[200];
public void setup() 
{
  size(500, 500);
  for(int i = 0; i < flamingo.length; i++){
    flamingo[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  nojo18.show();
  nojo18.move();
  for(int i = 0; i < flamingo.length; i++){
    flamingo[i].show();
  }
}
public void keyPressed()
{
  if(key == '4'){
    nojo18.turn(-5);
  }else if(key == '6'){
    nojo18.turn(5);
  }else if(key == '5'){
    nojo18.accelerate(0.3);
  }else if(key == 'h'){  
    nojo18.hyperspace();
  }
}
