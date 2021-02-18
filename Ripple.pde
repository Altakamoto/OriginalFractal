class Ripple
{
  private int myX, myY, mySiz, maxSiz;
  public Ripple(int x, int y, int siz)
  {
    myX = x;
    myY = y;
    mySiz = siz;
    maxSiz = (int)(Math.random()*150 + 200);
  }
  
  public void show()
  {
    if(mySiz < maxSiz) {
      fill(240, 248, 255, 0);
      ellipse(myX, myY, mySiz, mySiz);
    }
  }
  
  public void rippleEffect()
  {
    if(mySiz < maxSiz)
      mySiz = 5*mySiz/4;
  }
}
