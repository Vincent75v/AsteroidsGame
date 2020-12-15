public class Star
{
    int myX, myY;
    public Star(int x, int y)
    {
      myX = x;
      myY = y;
    }
    public void show()
    {
      ellipse(myX, myY, 2, 2);
      
    }
}
