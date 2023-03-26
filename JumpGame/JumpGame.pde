// Jonathan, Max, Oscar

ArrayList<Tile> tiles = new ArrayList<Tile>();

boolean left = false;
boolean right = false;
boolean jump = false;

gameLogic game = new gameLogic();
player player1 = new player();

void setup() {
  size(1500,700);
  
  generateTiles(tiles);

}

void draw() {
  background(0, 0, 20);

  for (int i = 0; i < tiles.size(); i++){
    Tile t = tiles.get(i);
    t.display();
  }

  player1.colider(tiles);
  player1.update();
  player1.display();
  player1.gravety();
  player1.move();
}

void generateTiles(ArrayList<Tile> tiles){
  // tiles.add(new Tile(0,0,20,20));
  // tiles.add(new Tile(1480,680,20,20));
  String[] fileLines = loadStrings("map.txt");

  int foundStartX = 0;
  int foundStartY = 0;
  for (int i = 0; i < fileLines.length; i++){
    char[] line = fileLines[i].toCharArray();

    for(int j = 0; j < line.length; j++) {
     // for(int j=0 ; j< tiles.size() ; j++){
      switch (line[j]) {
        case '1' :
          foundStartX = j * 20;
          foundStartY = i * 20;
        break;	
        case '2' : 
        break;
          
        case '3' :
          int tileWid = j * 20 - foundStartX + 20;
          int tileHei = 30;
          tiles.add(new Tile(foundStartX, foundStartY, tileWid, tileHei));
        break;	
      } 

    }
  }
}
