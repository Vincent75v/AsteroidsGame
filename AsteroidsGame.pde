//your variable declarations here
Spaceship bob = new Spaceship();
Star [] sky = new Star[1500];
ArrayList <Asteroid> obj = new ArrayList <Asteroid>(); 

public void setup() 

  {
    size(400, 400);
    background(0);
    bob.accelerate(0.2);
    for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
   for (int z = 0; z < 15; z++) {
     obj.add(new Asteroid()); 
  }
   
}
  
  public void draw() 
  {
    background(0);
    for(int z = 0; z < obj.size(); z++) {
    
    if(dist(obj.get(z).getX(), obj.get(z).getY(), bob.getX(), bob.getY()) < 20) {
      obj.remove(z);
    }
      else{
    obj.get(z).move(); 
    obj.get(z).show();
      }
    }
     bob.move();
    bob.show();
    
  

   
    
    
    

    
     for (int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }

    
  }


  public void keyPressed()
  {
    if (key=='w')
    {
      bob.accelerate(.6);
    }

    if (key == 's')
    {
      bob.accelerate(-0.6);
    }

    if (key =='a')
    {
      bob.turn(-8);
    }
    if (key =='d')
    {
      bob.turn(8);
    }
    if (key=='h')
    {
      bob.hyperSpace();
    }
  }
