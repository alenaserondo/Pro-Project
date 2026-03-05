Screen screen1;
Screen screen2;
Screen currentScreen;   // decides which screen is being shown

boolean start = false;
//boolean stop = false;
float count = 0.00;
// hihi
void setup()
{
  size(500, 400);

  // Create the screens
  screen1 = new Screen(color(255));
  screen2 = new Screen(color(255, 220, 200));  


  screen1.addWidget(new Widget(150, 100, 200, 50, "Go to Screen 2"));
  //screen1.addWidget(new Widget(150, 200, 200, 50, "Screen1 Button"));


  screen2.addWidget(new Widget(150, 100, 200, 50, "Go to Screen 1"));
  //screen2.addWidget(new Widget(150, 200, 200, 50, "Screen2 Button"));
  
screen1.addWidget(new Counter(100, 150, 300, 60, "Counter 1"));
//screen1.addWidget(new Counter(100, 300, 300, 60, "Counter 2"));

  // Start on screen 1
  currentScreen = screen1;
}

void draw()
{
  currentScreen.draw(); // draws the screen currently slected 
  
   if(start == true)
  {
    count = count + 0.015;
  }
  
 
  
 
}

void mousePressed()
{
  Widget w = currentScreen.getEvent(mouseX, mouseY); // define the object as the current screen

  if (w != null) // if its not empty - error handelling
  {
    String label = w.label; // find label for checking

 
    if (label.equals("Go to Screen 2"))
    {
      currentScreen = screen2; //s swaps the screens
    }
    else if (label.equals("Go to Screen 1"))
    {
      currentScreen = screen1;
    }
    else
    {
      
      println(label + " was pressed"); // prints out to consol which button was pressed  
    }
  }
}

void mouseMoved()
{
  currentScreen.checkHover(mouseX, mouseY); // q2
}

//////////////////// SCREEN ////////////////////

class Screen
{
  ArrayList<Widget> widgets; // create array list
  color bgColor; 

  Screen(color bgColor)  //constructor
  {
    this.bgColor = bgColor;
    widgets = new ArrayList<Widget>();  //create the widget
  }

 
  void addWidget(Widget w) // adds widgets to the array list 
  {
    widgets.add(w);
  }

  void draw() // // draw the widgets 
  {
    background(bgColor);

    for (Widget w : widgets) // loops through and draw 
    {
      w.draw();
    }
  }

  Widget getEvent(int mx, int my) 
  {
    for (Widget w : widgets)
    {
      if (w.clicked(mx, my))
      {
        return w;
      }
    }
    return null;
  }

  void checkHover(int mx, int my) // q2
  {
    for (Widget w : widgets)
    {
      w.checkHover(mx, my);
    }
  }
}

//////////////////// WIDGET ////////////////////

class Widget
{
  int x, y, w, h;
  String label;
  boolean isHovered = false;

  Widget(int x, int y, int w, int h, String label)
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.label = label;
  }

  void draw()
  {
    if (isHovered)
      stroke(255);
    else
      stroke(0);

    fill(180);
    rect(x, y, w, h);

    fill(0);
    textAlign(CENTER, CENTER);
    text(label, x + w/2, y + h/2);
  }

  void checkHover(int mx, int my)
  {
    isHovered = (mx > x && mx < x + w &&
                 my > y && my < y + h);
  }

  boolean clicked(int mx, int my)
  {
    return mx > x && mx < x + w &&
           my > y && my < y + h;
  }
}



//////////////////// COUNTER ////////////////////

class Counter extends Widget
{
  

  Counter(int x, int y, int w, int h, String label)
  {
    super(x, y, w, h, label); // reuses variables from widget class
  }

  void draw()
  {
    
    if (isHovered)
      stroke(255);
    else
      stroke(0);

    fill(200);
    rect(x, y, w, h);

   
    int buttonWidth = w / 4;
    int numberWidth = w / 2;

    
    fill(225,0,0);
    rect(x, y, buttonWidth, h); // minus
    fill(0,225,0);
    rect(x + buttonWidth + numberWidth , y, buttonWidth, h); //plus

    fill(220);
    rect(x + buttonWidth, y, numberWidth, h); // middle where num is shown

    
    fill(0);
    textAlign(CENTER, CENTER);

    text("reset", x + buttonWidth/2, y + h/2);
    text("start", x + buttonWidth + numberWidth + buttonWidth/2, y + h/2);
    text(count, x + buttonWidth + numberWidth/2, y + h/2); //count variable is displayed and changes when the button is pressed
  }

  boolean clicked(int mx, int my)
  {
    if (super.clicked(mx, my))
    {
      int buttonWidth = w / 4;
      int numberWidth = w / 2;

      
      if (mx > x && mx < x + buttonWidth)
      {
        
        start= false;
        count = 0;
      }

      
      else if (mx > x + buttonWidth + numberWidth &&
               mx < x + w)
      {
        start = true;
      }

      return true;
    }

    return false;
  }
}

