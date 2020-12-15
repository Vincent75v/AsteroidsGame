Spaceship bob = new Spaceship();
ArrayList <Bullet> pew = new ArrayList <Bullet>(); 
Star[] stars;
ArrayList <Asteroid> rock; 
public void setup() 
{
  //your code here
  //background(0); 
  size(700, 700);
  rock = new ArrayList <Asteroid>();
  for (int i = 0; i < 20; i++)
  {
    rock.add(new Asteroid((int)(Math.random()*700), (int)(Math.random()*700)));
  }
  stars = new Star[1500];
  for (int i = 0; i < stars.length; i++)
  {
    stroke(255);
    stars[i] = new Star((int)(Math.random()*700), (int)(Math.random()*700));
  }
}
public void draw() 
{
  background(0);
  fill(255);
  bob.move();
  bob.show(); 
  for (int i = 0; i < rock.size(); i++)
  {
    rock.get(i).show();
    rock.get(i).move();
    if (rock.get(i).crash())
    {
      rock.remove(i);
    }
  }
  if (rock.size() == 0)
  {
    for (int i = 0; i < 15; i++) {
      rock.add(new Asteroid((int)(Math.random()*700), (int)(Math.random()*700)));
      if (rock.get(i).crash())
      {
        rock.remove(i);
      }
    }
  }
  for (int i = 0; i < stars.length; i ++) {
    stars[i].show();
  }
  for (int i= 0; i < pew.size(); i++){
    pew.get(i).show();
    pew.get(i).move();
    for(int j = 0; j < rock.size(); j++) {
     if(dist(pew.get(i).getX(), pew.get(i).getY(), rock.get(j).getX(), rock.get(j).getY()) < 20) {
     rock.remove(j);
     pew.remove(i);
     break;
     }
  }
}
}
public void keyPressed()
{
  if (key == 'd')
  {
    bob.turn(10);
    if (key == 'w') {
      bob.accelerate(.5);
    }
  }
  if (key == 'a')
  {
    bob.turn(-10);
    if (key == 'w') {
      bob.accelerate(.5);
    }
  }
  if (key == 'w')
  {
    bob.accelerate(.1);
    if (key == 'd') {
      bob.turn(10);
    }
    if (key == 'a') {
      bob.turn(-10);
    }
    if (key == ' ') {
      pew.add(new Bullet());
    }
  }
  if (key == 'e')
  {
    bob.hyperSpace();
  }
  if (key == 'q')
  {
    pew.add(new Bullet());
  }
}
