class gameObject{
  boolean tuchGrass = false;
  
  PVector position, velocity, acceleration;
  
  gameObject(){
    position = new PVector();
    velocity = new PVector();
    acceleration = new PVector();
  }

  void update(){
    position.add(velocity);
    velocity.add(acceleration);    
    
  }
}
