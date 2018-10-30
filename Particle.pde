class Particle { //<>//
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
  }

  void display() {
    //stroke(0);
    //strokeWeight(5);
    //point(this.pos.x, this.pos.y);
  }

  void calcForce() {
    float angle = 0;
    PVector force = PVector.fromAngle(angle);
    force.mult(0.5);

    addForce(force);
  }
  void addForce(PVector force) {
    this.acc.add(force);
  }
}
