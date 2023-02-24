class gameObject{
  boolean tuchGrass = false;
  
  
  void update(){
    position.add(velocity);
    velocity.add(acceleration);    
    
  }
}
