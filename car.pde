class Car {
  float x;
  float y;
  color col;
  int orientation; //0 = left/up, 1 = right/down (depends on boolean horizontal)

  Car(float a, float b, int o) {
    x = a; //x-coordinate of car
    y = b;
    orientation = o;
    col = color(random(255), random(255), random(255)); //assigns a random color to the car
  }

  void drawCar() {
    fill(col);
    stroke(0);
    strokeWeight(1);
    rect(x, y, 70, 50);

    fill(184, 234, 245); //windows:
    rect(x+40, y+5, 20, 40);
    rect(x+10, y+5, 20, 40);

    fill(0); //tires:
    rect(x+5, y-5, 20, 5);
    rect(x+45, y-5, 20, 5);
    rect(x+5, y+50, 20, 5);
    rect(x+45, y+50, 20, 5);

    fill(240, 255, 250); //headlights:
    ellipse(x+70*orientation, y+13, 5, 10);
    ellipse(x+70*orientation, y+37, 5, 10);
  }
}
