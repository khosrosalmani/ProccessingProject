class ParkingStallSection {


  int each_section_rows; 
  int each_section_columns;
  ParkingStall[] section_array;

  ParkingStallSection(int each_section_rows, int each_section_columns) {

    this.each_section_rows = each_section_rows;
    this.each_section_columns = each_section_columns;

    section_array = new ParkingStall[this.each_section_rows * this.each_section_columns];
  }

  void drawSection(int section_x_pos, int section_y_pos, int stall_width, int stall_height) {

    int XPos= section_x_pos;
    int YPos= section_y_pos;

    for (int i=0; i< this.each_section_rows * this.each_section_columns; i++ ) {
      section_array[i] = new ParkingStall(XPos, YPos, stall_width, stall_height);
      section_array[i].drawStall();
      XPos+=stall_width;
      if((i+1)%each_section_columns == 0){
           XPos= section_x_pos;
           YPos+=stall_height;
      }
    }
  }
}