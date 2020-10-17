import controlP5.*;

Street streatN;
Street streatS;
control_panel cp = new control_panel();
ControlP5 cp5;

Date current_date = new Date((int)random(1, 7), 0);

int minute = 0;
int raw_time = 0;
int full = 0;
Car cars[] = new Car[500];
Gate gate_north;
Gate gate_south;
billboard B;

void setup() {
  size(1200, 830);
  frameRate(30);
  spawncars();
  cp5 = new ControlP5(this);
  cp5.addButton("pause")
  .setPosition(5, 25).setSize(200, 40).setLabel("PAUSE/PLAY");
}


void draw() {
  if(!cp.paused)
    raw_time++;
  println(raw_time);
  minute = raw_time/5;
  current_date.time = minute/60;
  drawBackground();
  drawcars();
 B = new billboard(0,0);
  drawcars();
  if(full < 120){
  gate_north = new Gate(505,190,1,"Enter");
  }
  if(full >= 120){
  gate_north = new Gate(505,190,0,"Enter");
  }
  gate_south = new Gate(505,690,1,"Exit");
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

public void pause() {
  cp.paused = !cp.paused;
}
