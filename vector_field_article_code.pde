int margin_x = 150;
int margin_y = 60;
int len = 20;
int w, h;
int cols, rows;
float off;

Cell grid[][];
PGraphics field;
PImage img;
color[][] colors;

PVector vector__field (float x, float y) {
  x = map(x, 0, width, -3, 3);
  y = map(y, 0, height, -3, 3);
  
  float u = PI * sin(y); 
  float v = x * x;
  
  return new PVector(u, v);
}

void setup () {
  //size(630, 630);
  fullScreen();
  background(255);
  
  img = loadImage("self_portrait_3.jpg"); 
  cols = floor(width / len);
  rows = floor(height / len);
  
  grid = new Cell[cols][rows];
  

  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      grid[i][j] = new Cell(i, j);
      grid[i][j].show();
    }
  }
  
  off += 0.
}
