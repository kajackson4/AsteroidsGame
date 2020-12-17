ArrayList <Bullet> shots = new ArrayList <Bullet>();
ArrayList <Asteroid> jerry = new ArrayList <Asteroid> ();
Spaceship nojo18 = new Spaceship();
Star [] flamingo = new Star[200];
public void setup() 
{
  size(500, 500);
  for(int i = 0; i < flamingo.length; i++){
    flamingo[i] = new Star();
  }
  for(int i = 0; i < 30; i++){
    jerry.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  nojo18.show();
  nojo18.move();
  for(int i = 0; i < jerry.size(); i++){
    jerry.get(i).show();
    jerry.get(i).move();
    float d = dist((float)nojo18.getX(), (float)nojo18.getY(), (float)jerry.get(i).getX(), (float)jerry.get(i).getY());
    if(d < 8){
      text("ouch!!",(int)nojo18.getX(), (int)(nojo18.getY()+ 15));
      jerry.remove(i);
    }
  }
  for(int i = 0; i < flamingo.length; i++){
    flamingo[i].show();
  }
  for(int i = 0; i < shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
  }
  for(int j = 0; j < shots.size(); j++){
    for(int i = 0; i < jerry.size(); i++){
    float k = dist((float)shots.get(j).getX(), (float)shots.get(j).getY(), (float)jerry.get(i).getX(), (float)jerry.get(i).getY());
    if(k < 11){
      text("gotcha!", (int)shots.get(j).getX(), (int)(shots.get(j).getY()+10));
      jerry.remove(i); 
      shots.remove(j);
      break;
    }
  }
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
  }else if(key == ' '){
    shots.add(new Bullet(nojo18));
  }
}
