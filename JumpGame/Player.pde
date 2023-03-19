class player extends gameObject {
  boolean tuchGrass = false;

  player() {
  }

  void display() {
    fill(255);
    rect(position.x, position.y, 50, 80);
    
    if (position.x > width + 50){
      position.x = - 50;
    }
    
    if (position.x < -50){
      position.x = width + 50;
    }
    
    if(position.y > 800){
      position.y -= position.y - 800;
    }
  }

  void gravety(){
    if (position.y < 800) {
      acceleration.set(0, 1);
    } else {
      acceleration.y = 0;
      velocity.y = 0;
    }
  }

  void move(){
    
    if(velocity.y == 0){
      tuchGrass = true;
    } else {
      tuchGrass = false;
    }
    
    if(velocity.x < 20 && velocity.x > -20){
      if (right) {
       acceleration.x = 2;
      } else if (left) {
        acceleration.x = -2;
      } else {
        acceleration.x = 0;
      }
    } else {
      acceleration.x = 0;
    }

    if (jump && tuchGrass) {
      velocity.y = -20;
    }

    if (velocity.x > 0) {
      velocity.x -= 1;
    } else if (velocity.x < 0) {
      velocity.x += 1;
    }
  }

}

void keyPressed() {
  if (keyCode == RIGHT) {
    right = true;
  }

  if (keyCode == LEFT) {
    left = true;
  }
  
  if (keyCode == UP) {
    jump = true;
  }
}

void keyReleased() {
  if (keyCode == RIGHT) {
    right = false;
  }

  if (keyCode == LEFT) {
    left = false;
  }
  
  if (keyCode == UP) {
    jump = false;
  }
}
