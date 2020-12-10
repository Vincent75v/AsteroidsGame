class Asteroid extends Floater {
  private int rotation;
  public  Asteroid() {
    

    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -15;
    yCorners[0] = -5;
    xCorners[1] = 5;
    yCorners[1] = -5;
    xCorners[2] = 15;
    yCorners[2] = 0;
    xCorners[3] = 5;
    yCorners[3] = 15;
    xCorners[4] = -15;
    yCorners[4] = 5;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myColor = color(255);
     myXspeed = Math.random()*4-2;
    myYspeed = Math.random()*4-2;
     myPointDirection=1;
     myCenterX = (int) (Math.random()* 500);
    myCenterY = (int) (Math.random()* 500);
    rotation = (int)(Math.random() * 20) - 10;
  }


    public int getX() {
      return (int)myCenterX;
    }
    public int getY() {
      return (int)myCenterY;
    }
     void move() {
     turn(rotation);
     super.move();
     
    }
    

    
  }
