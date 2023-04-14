class Coin extends gameObject{
    
    
    int x;
    int y;

    int coinSize = 20;
    
    Coin(int inX, int inY){
        x = inX;
        y = inY;
    }

    void display(){
        fill(255);
        circle(x, y, coinSize);
    }
}