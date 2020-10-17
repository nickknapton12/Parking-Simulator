//Class for each individual parking stall, receives whether its occupied and its position.


class ParkingStall{
  int ypos, xpos;
  boolean occupied = false;
  ParkingStall(boolean occu, int x, int y){
    ypos = y;
    xpos = x;
    occupied = occu;
    if(occu == true)
      fill(255,100,100);
    else
      fill(100,255,100);
    stroke(0);
    rect(xpos, ypos, 50,30);
    
  }

      
}

//Class for array of all parking spots, creates the parking lot.

class ParkingLot{
  ParkingStall [] stalls = new ParkingStall[120];
  
  ParkingLot(){
    boolean s;
    //placeholder for whether the stall will be occupied
    for (int i = 0, j = 0, k = 0; i < 120; ++i,++j){
    // i is the index number of the car, j is for each column, and k for each row
      if (i % 15 == 0){
        j = 0;
        k = k + 1; 
      }
      
      if (i % 30 == 0){
        k = k + 1;
        
      }
      
      if (i % 5 == 0){
        j = j + 1;
      }
      
      if ( i < full)
        s = true;
      else 
        s = false;
      
      
      stalls[i] = new ParkingStall(s, 120+j*50,220+k*30);
      
    
  
    }
  }
  
}
