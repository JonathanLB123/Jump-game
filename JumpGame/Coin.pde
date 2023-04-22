class Coin extends gameObject{
    
    
    int x;
    int y;

    boolean hit = false;

    int coinSize = 20;
    
    Coin(int inX, int inY){
        x = inX;
        y = inY;
    }

    void display(){
        fill(255);
        if (player1.position.x < x && 
        player1.position.x + player1.playerWidth > x &&
        player1.position.y > y && 
        player1.position.y - player1.playerHeight < y &&
        !hit){

            hit = true;

            score++;
        }
        if (!hit) {
            circle(x, y, coinSize);    
        }
    }
}
