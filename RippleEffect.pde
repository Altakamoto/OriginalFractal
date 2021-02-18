public ArrayList <Ripple> drops = new ArrayList<Ripple>();
public int rockH;
public int rockW;
public int buffer = 3;
public void setup()
{
  size(400, 400);
  background(240, 248, 255);
}
public void draw()
{
  if(buffer % 3 == 0) {
    background(240, 248, 255);
    buffer++;
  } else {
    buffer++;
  }
  for(int i = 0; i < drops.size(); i++) {
    drops.get(i).show();
    drops.get(i).rippleEffect();
  }
  ellipse(mouseX, mouseY, rockH, rockW);
}

public void mouseClicked() 
{
  drops.add(new Ripple(mouseX, mouseY, (rockH + rockW)/2));
  rockH = (int)(Math.random()*7 + 6);
  rockW = (int)(Math.random()*7 + 6);
}
