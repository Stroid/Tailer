class FlowField {
  int rows = int(width / scl);
  int cols = int(height / scl);
  float[][] field = new float[rows][cols];

  void update() { //<>//
    for (int col = 0; col < cols; col++) {
      for (int row = 0; row < rows; row++) {
        field[row][col] = (noise(col * 0.7, row * 0.7, frameCount * 0.01)* 2 - 1) * 2 * PI;
      }
    }
  }
  void display() {
    for (int col = 0; col < cols; col++) {
      for (int row = 0; row < rows; row++) {
        float y = col * scl;
        float x = row * scl;
        float a = field[row][col];
        
        strokeWeight(2);
        pushMatrix();
        translate(x, y);
        rotate(a);
        line(scl- 5, 0, 0, 0);
        popMatrix();
      }
    }
  }
}
