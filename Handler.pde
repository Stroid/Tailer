class Handler {
  ArrayList<Particle> handler = new ArrayList();

  void update() {
    for (int i = handler.size() - 1; i >= 0; i--) {
      handler.get(i).update();
    }
  }
  
  void display() {
    for (int i = handler.size() - 1; i >= 0; i--) {
      handler.get(i).display();
    }
  }
  
  void add(Particle p) {
    handler.add(p);
  }
  
  void remove(Particle p) {
    handler.remove(p);
  }
}
