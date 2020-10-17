void spawncars(){
  for(int i = 0; i < 500; i++){
    int x = int(random(-200,0))*80;
    cars[i] = new Car (x, 82);
  }
}

void drawcars(){
  for(int i = 0; i< 500; i++){
    if(cars[i].down == true){
      cars[i].y = cars[i].y + 8; 
      cars[i].drawCar();
    }
    else{
       cars[i].x = cars[i].x + 3; 
       cars[i].drawCar();
    }
   if(cars[i].x == 8000){
    cars[i].x = -16000; 
   }
   if(cars[i].y == 1000){
    cars[i].y = 82;
    cars[i].x = -16000; 
    cars[i].down = false;
   }
   if(cars[i].x < 650 && cars[i].x > 550){
     if(random(0,3) == 1){
       cars[i].down = true;
    }
   }
  }
}

class Car {
  boolean down = false;
  float x;
  float y;
  color col;
  
  Car(float a, float b) {
    x = a; //x-coordinate of car
    y = b;
    col = color(random(255), random(255), random(255)); //assigns a random color to the car
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
