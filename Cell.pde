class Cell {
  int i, j;  
  PVector vec;

  float arg;
  float mag;

  Cell (int _i, int _j) {
    i = _i;
    j = _j;
    
    float x = (i + 0.5) * len;
    float y = (j + 0.5) * len;
    
    vec = vector__field(x, y);
    mag = vec.mag();
    arg = vec.heading();
  }
  
  void show () {
    if (mag != 0) {
      push();
      strokeWeight(2);
      stroke(0);
  
      float r = 8; 
      float l = len;
      float buffer = 5;
  
      translate((i + 0.5) * l, (j + 0.5) * l);
      rotate(arg);
      line(-l/2 + buffer, 0, l/2 - buffer, 0);
      
      translate(l/2 - buffer, 0);
  
      float a = radians(150);
      float x1 = r * cos(a);
      float y1 = r * sin(a);
      
      line(0, 0, x1, y1);  
      line(0, 0, x1, -y1);
        
      pop();
    }
  }
}
