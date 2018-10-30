Handler handler;
FlowField field;

float scl = 20;
void setup() {
  size(800, 500);
  smooth();

  handler = new Handler();
  field = new FlowField();
  
  
  for (int i = 0; i < 20; i++) {
    handler.add(new Particle(random(width), random(height), handler));
  }
}

void draw() {
  int mill = millis();
  background(255);
  handler.update();
  handler.display();
  println(frameRate, handler.handler.size(), millis() - mill);
  field.update(); //<>//
  
  //field.display();
}
