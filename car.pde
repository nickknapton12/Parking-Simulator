class Car {
  float x;
  float y;
  color col;
  
  Car(float a, float b) {
    x = a; //x-coordinate of car
    y = b;
    col = color(random(255), random(255), random(255)); //assigns a random color to the car
  }
  
  void drawCar(){
    fill(col);
    stroke(0);
    strokeWeight(1);
    rect(x, y, 70, 50);
    fill(184, 234, 245);
    rect(x+42, y+5, 20, 40);
    rect(x+5, y+5, 20, 40);
    fill(0);
    rect(x+5, y-5, 20, 5);
    rect(x+40, y-5, 20, 5);
    rect(x+5, y+50, 20, 5);
    rect(x+40, y+50, 20, 5);
    fill(240, 255, 250);
    ellipse(x+70, y+13, 5, 10);
    ellipse(x+70, y+37, 5, 10);
  }
}
