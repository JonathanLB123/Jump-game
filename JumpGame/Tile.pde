class Tile{
    int x;
    int y;
    int tileWidth;
    int tileHeight;

    Tile(int posX, int posY, int widthX, int heigthY){
        x = posX;
        y = posY;
        tileWidth = widthX;
        tileHeight = heigthY;

    }

    void display(){
        rect(x, y, tileWidth, tileHeight);
    }
}