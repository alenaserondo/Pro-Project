import controlP5.*;
import java.util.ArrayList;
import java.util.Scanner;




ControlP5 cp5;
DropdownList ddl;

void setup() {
  size(400, 400);
  cp5 = new ControlP5(this);

  // Create the dropdown list
  ddl = cp5.addDropdownList("myList")
          .setPosition(100, 100)
          .setSize(200, 100);

  // Customize the list
  customize(ddl);
}

void customize(DropdownList ddl) {
  ddl.setBackgroundColor(color(190));
  ddl.setItemHeight(20);
  ddl.setBarHeight(20);
  ddl.getCaptionLabel().setText("Select Option");
  
  // Add items
  for (int i = 0; i < 5; i++) {
    ddl.addItem("Option " + i, i);
  }
  
  ddl.setColorBackground(color(60));
  ddl.setColorActive(color(255, 128));
}

void draw() {
  background(240);
}

// Function to handle events
void controlEvent(ControlEvent theEvent) {
  if (theEvent.isGroup()) {
    // Print the selected item
    println(theEvent.getGroup().getValue() + " selected");
  }
}
