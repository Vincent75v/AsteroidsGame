//your variable declarations here
Spaceship bob = new Spaceship();
Star [] sky = new Star[1500];
public void setup() 

  {
    size(400, 400);
    background(0);
    bob.accelerate(0.2);
    for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
}
  
  public void draw() 
  {
    background(0);

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

