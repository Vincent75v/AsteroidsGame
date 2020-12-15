class Asteroid extends Floater {
  private int rotation;
  public  Asteroid(int x, int y) {


    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -10;
    yCorners[0] = -5;
    xCorners[1] = 5;
    yCorners[1] = -5;
    xCorners[2] = 10;
    yCorners[2] = 0;
    xCorners[3] = 5;
    yCorners[3] = 10;
    xCorners[4] = -10;
    yCorners[4] = 5;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myColor = color(255);
    myCenterX = x;
    myCenterY = y;
    myXspeed = Math.random()*4 - 2;
    myYspeed = Math.random()*4 - 2;
    myPointDirection = Math.random()*360;
    rotation = (int)(Math.random()*11 - 6);
  }

  public boolean crash()
  {
    if (dist((int)myCenterX, (int)myCenterY, (int)bob.getX(), (int) bob.getY()) < 40)
      return true;
    else 
    return false;
  }
  public boolean destroy()
  {
    for (int i = 0; i < pew.size(); i++) {
      if (dist((float)myCenterX, (float)myCenterY, (float)pew.get(i).getX(), (float)pew.get(i).getY()) < 15)
        return true;
    }
    return false;
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
    myXspeed = x;
  }
  public double getDirectionX () { 
    return (double) myXspeed;
  }
  public void setDirectionY(double y) { 
    myYspeed = y;
  }
  public double getDirectionY () { 
    return (double) myYspeed;
  }
  public void setPointDirection( int degrees) { 
    myPointDirection = degrees;
  }
  public double getPointDirection() { 
    return (int) myPointDirection;
  }

  public float getasX() {
    return (int)myCenterX;
  }
  public float getasY() {
    return (int)myCenterY;
  }
  void move() {
    if (myXspeed == 0)
    {
      myXspeed = 2 - Math.random()*2;
    }
    if (rotation == 0) {
      rotation = (int)(Math.random()*18-9);
    }
    turn(rotation);
    //Floater.move();
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if (myCenterX >width)
    {     
      myCenterX = 0;
    } else if (myCenterX<0)
    {     
      myCenterX = width;
    }    
    if (myCenterY >height)
    {    
      myCenterY = 0;
    } else if (myCenterY < 0)
    {     
      myCenterY = height;
    }
  }
}
