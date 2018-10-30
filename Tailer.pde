Handler handler;
FlowField field;
void setup() {
  size(800, 500);
  //smooth();

  handler = new Handler();
  field = new FlowField();
  field.update();
  
  for (int i = 0; i < 20; i++) {
    handler.add(new Particle(random(width), random(height), handler));
  }
}

void draw() {
  int mill = millis();
  background(200);
  handler.update();
  handler.display();
  println(frameRate, handler.handler.size(), millis() - mill);
  
  
  //field.display();
}
