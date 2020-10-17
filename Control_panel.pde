class control_panel {
  boolean paused = false; //if true, stops entire simulation
  
  /*
    Draws a control panel onto the top of the screen, including
    the text displaying the current date
  */
  void drawPanel() {
    fill(50);
    noStroke();
    rect(0, 0, 1200, 70);
    fill(255);
    text("Current date: " + current_date.weekday + ", " + current_date.time + ":" + minute%60, 0, 20);
  }
}
