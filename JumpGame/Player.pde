class player extends gameObject {


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

    if (position.y < 800) {
      acceleration.set(0, 1);
      tuchGrass = false;
    } else {
      acceleration.y = 0;
      velocity.y = 0;
      tuchGrass = true;
    }
    
    if(position.y > 800){
      position.y -= position.y - 800;
    }

    if (velocity.x > 0) {
      velocity.x -= 1;
    } else if (velocity.x < 0) {
      velocity.x += 1;
    }

    if (right) {
      acceleration.x = 2;
    } else if (left) {
      acceleration.x = -2;
    } else {
      acceleration.x = 0;
    }
    
    if (jump && tuchGrass) {
      velocity.y = -20;
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
