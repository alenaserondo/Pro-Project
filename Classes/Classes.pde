// Alyx Harmon - screen & button classes
class Screen
{
  ArrayList<Button> widgets;
  color bgColor;
  
  Screen(color bgColor)
  {
    this.bgColor = bgColor;
    widgets = new ArrayList<Button>();
  }
  
  void addWidget(Button b)
  {
    widgets.add(b);
  }
  
  void draw()
  {
    background(bgColor);
    
    for (Button b : widgets)
      b.draw();
  }
  
  Button getButton(int mx, int my)
  {
    for (Button b: widgets)
    {
      if (b.isClicked(mx,my))
      return b;
    }
    return null;
  }
}

class Button
{
  int x,y,w,h;
  String label;
  
  Button(int x, int y, int w, int h, String label)
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.label = label;
  }
  
  void draw()
  {
    noStroke();
    fill(255);
    rect(x,y,w,h);
    
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(20);
    text(label, x + w/2, y + h/2);
  }
  
  boolean isClicked(int mx, int my)
  {
    return mx > x
    && mx < x + w
    && my > y
    && my < y + h;
  }
}

