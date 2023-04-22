class Enemy extends gameObject{
  int x;
  int y;
  
  Enemy(int inX, int inY){
    x = inX;
    y = inY;
  }

  void display(){

    if(player1.position.x < x-10 && 
    player1.position.x + player1.playerWidth > x+10 &&
    player1.position.y > y-10 && 
    player1.position.y - player1.playerHeight < y+10){

        alive = false;
        }
    fill(255,0,0);
    rect(x, y, 20, 20);
  }
}
