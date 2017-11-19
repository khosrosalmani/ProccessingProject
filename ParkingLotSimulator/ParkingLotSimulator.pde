final int screen_width=900;
final int screen_height=600;

final int delta_height=20;
final int delta_width=40;

final int num_of_parking_rows= 4 ;
final int num_of_parking_columns= 2 ;
final int num_of_parking_sections=num_of_parking_rows * num_of_parking_columns;
ParkingStallSection[] stall_sections_array = new ParkingStallSection[num_of_parking_sections];  

final int each_section_rows = 2;
final int each_section_columns = 5;

final int stall_width=74;
final int stall_height=50;

final int vertical_street_width= 40;
final int horizontal_street_height= 40;

void setup() {
  // Green Background 
  background(color(0, 102, 0));  // GREEN
  size (900, 600);

  // Gray Background
  strokeWeight(4);
  stroke(255);
  fill(color(96, 96, 96));  // GRAY
  rect(delta_width, delta_height, screen_width - 2*delta_width, screen_height - 2*delta_height);

  // Drawing Parking Sections
  int section_x_pos=delta_width+20;
  int section_y_pos=delta_height+20;
  int counter=0;
  for (int i=0; i<num_of_parking_rows; i++) {
    for (int j=0; j<num_of_parking_columns; j++) {
      stall_sections_array[counter] = new ParkingStallSection(each_section_rows, each_section_columns);
      stall_sections_array[counter].drawSection(section_x_pos, section_y_pos, stall_width, stall_height);
      section_x_pos=section_x_pos+ vertical_street_width+ each_section_columns*stall_width ;
      counter++;
    }
    section_x_pos=delta_width+20;
    section_y_pos = section_y_pos + horizontal_street_height + each_section_rows* stall_height ;
  }
  }