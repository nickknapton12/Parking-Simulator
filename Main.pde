Street streatN;
Street streatS;
Date current_date = new Date((int)random(1, 7), 0);
control_panel cp = new control_panel();
int minute = 0;
int raw_time = 0;
int full = 0;
Car cars[] = new Car[500];

void setup() {
  size(1200, 830);
  frameRate(30);
  spawncars();
}


void draw() {
  raw_time++;
  println(raw_time);
  minute = raw_time/5;
  current_date.time = minute/60;
  drawBackground();
  drawcars();
}

void drawBackground() {
  background(27, 128, 45);
  cp.drawPanel();
  fill(100);
  stroke(255);
  strokeWeight(5);
  rect(90, 200, 1020, 500);
  noStroke();
  fill(100);
  rect(570,190, 60, 20);
  rect(570,690, 60, 40);
  streatN = new Street(80);
  streatS = new Street(720);
  ParkingLot lot = new ParkingLot();
}
