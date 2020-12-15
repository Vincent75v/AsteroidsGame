class Spaceship extends Floater {
  double myDirectionX;
  double myDirectionY;
  double directionX;


  public Spaceship() {
    corners = 4;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = 255;   //white spaceship
    myCenterX = width/2;
    myCenterY = height/2; //holds center coordinates   
    myXspeed = 0;
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees
    myDirectionX = 0;
    myDirectionY = 0;
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
  public void hyperSpace() {
    myCenterX = ((int)(Math.random()*700));
    myCenterY = ((int)(Math.random()*700));
    myDirectionX = (0);
    myDirectionY = (0);
    myPointDirection = ((int)(Math.random()*360));
  }
}
