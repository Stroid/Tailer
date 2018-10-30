class Particle { //<>// //<>//
  PVector pos;
  PVector vel;
  PVector acc;
  PVector lastPos;
  

  Particle(float x, float y, Handler handler) {
    this.pos = new PVector(x, y);
    this.vel = new PVector();
    this.acc = new PVector();
    this.lastPos = new PVector();
    
    
  }

  void update() {
    this.lastPos = this.pos.copy();
    this.pos.add(vel);
    this.vel.add(acc);
    this.acc.mult(0);

    this.vel.mult(0.9);

    calcForce();

    handler.add(new Tail(this.pos.copy(), this.lastPos.copy(), handler));
    
    if (this.pos.x > width) {
      this.pos.x = 0;
    }
    else if(this.pos.x < 0){
     this.pos.x = width;
    }
    if (this.pos.y > height) {
      this.pos.y = 0;
    }
    else if(this.pos.y < 0){
      this.pos.y = height;
    }
  }

  void display() {
    //stroke(0);
    //strokeWeight(5);
    //point(this.pos.x, this.pos.y);
  }

  void calcForce() {
    int X = int(map(this.pos.x, 0, width, 0, width / scl - 1));
    int Y = int(map(this.pos.y, 0, height, 0, height / scl - 1));

    float angle = field.field[X][Y];
    PVector force = PVector.fromAngle(angle);
    force.mult(0.5);

    addForce(force);
  }
  void addForce(PVector force) {
    this.acc.add(force);
  }
}
