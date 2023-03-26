class player extends gameObject {
  boolean tuchGrass = false;

  int playerHeight = 80;
  int playerWidth = 50;

  player() {
  }

  void display() {

    fill(255);
    rect(position.x, position.y - playerHeight, playerWidth, playerHeight);
    
    if (position.x > width + playerWidth){
      position.x = - playerWidth;
    }
    
    if (position.x < -playerWidth){
      position.x = width + playerWidth;
    }
    
    if(position.y > height){
      position.y -= position.y - height;
    }
  }

  void gravety(){
    if (position.y < height && !tuchGrass) {
      acceleration.set(0, 1);
    } else {
      acceleration.y = 0;
      velocity.y = 0;
    }
  }

  void colider(ArrayList<Tile> tyler){
    for(int i = 0; i < tyler.size(); i++){
      if(position.y > tyler.get(i).y && position.y < tyler.get(i).y+tyler.get(i).tileHeight && position.x + playerWidth > tyler.get(i).x && position.x < tyler.get(i).x+tyler.get(i).tileWidth){
        tuchGrass = true;
        position.y -= position.y - tyler.get(i).y;
      } else {
        tuchGrass = false;
      }
    }
  }

  void move(){
    
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

    if (jump) {
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
