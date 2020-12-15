class Bullet extends Floater
{
  double myDirectionX;
  double myDirectionY;
  double dRadians;
  public Bullet()
  {
    myColor = 255;
    corners = 1;
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 0;
    yCorners[0] = 0;
    myPointDirection = bob.getPointDirection();
    dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + bob.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) +bob.getDirectionY();
  }
  public void setX(int x) { 
    myCenterX = x;
  }
  public int getX() { 
    return (int) myCenterX;
  }
  public void setY(int y) { 
    myCenterY = y;
  }
  public int getY() { 
    return (int) myCenterY;
  }
  public void setDirectionX(double x) { 
    myDirectionX = x;
  }
  public double getDirectionX () { 
    return (double) myDirectionX;
  }
  public void setDirectionY(double y) { 
    myDirectionY = y;
  }
  public double getDirectionY () { 
    return (double) myDirectionY;
  }
  public void setPointDirection( int degrees) { 
    myPointDirection = degrees;
  }
  public double getPointDirection() { 
    return (int) myPointDirection;
  }
  public void move()
  {
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
  }
  public void show() {
    ellipse((int)myCenterX, (int)myCenterY, 2, 2);
  }
}
  
