class Tail extends Particle{
  float alpha;
  PVector pos;
  PVector pos2;
  Tail(PVector pos,PVector pos2, Handler handler){
    super(pos.x, pos.y, handler);
    this.pos = pos;
    this.pos2 = pos2;
    alpha = 5;
  }
  void update(){
    alpha -= 1;
    if(alpha < 0){
      handler.remove(this);
    }
  }
  void display(){
    stroke(0);
    strokeWeight(alpha);
    line(this.pos.x, this.pos.y, this.pos2.x, this.pos2.y);
  }
}
