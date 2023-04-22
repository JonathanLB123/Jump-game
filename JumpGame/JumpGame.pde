// Jonathan, Max, Oscar

int numOfCoins = 6;
int score = 0;

boolean alive = true;

ArrayList<Tile> tiles = new ArrayList<Tile>();
ArrayList<Coin> coins = new ArrayList<Coin>();
ArrayList<Enemy> enemys = new ArrayList<Enemy>();

Coin[] trueCoins = new Coin[numOfCoins];

boolean left = false;
boolean right = false;
boolean jump = false;

gameLogic game = new gameLogic();
player player1 = new player();

void setup() {
  size(1500, 700);

  generateTiles(tiles);

  for (int i = 0; i < numOfCoins; i++) {
    Coin c = coins.get(int(random(coins.size())));
    trueCoins[i] = c;
  }
}

void draw() {
  if (alive) {
    if (score < numOfCoins) {
      background(0, 0, 20);

      for (int i = 0; i < tiles.size(); i++) {
        Tile t = tiles.get(i);
        t.display();
      }

      for (int i = 0; i < numOfCoins; i++) {
        trueCoins[i].display();
      }

      for (int i = 0; i < enemys.size(); i++){
        Enemy e = enemys.get(i);
        e.display();
      }

      player1.update();
      player1.display();
      player1.gravety();
      player1.move();
      player1.colider(tiles);
    } else {
      fill(255);
      textSize(50);
      text("you win!!!", 50, 50);
    }
  } else {
    fill(255);
      textSize(50);
      text("game over", 50, 50);
  }
}

void generateTiles(ArrayList<Tile> tiles) {
  String[] fileLines = loadStrings("map.txt");

  int foundStartX = 0;
  int foundStartY = 0;
  for (int i = 0; i < fileLines.length; i++) {
    char[] line = fileLines[i].toCharArray();

    for (int j = 0; j < line.length; j++) {
      switch (line[j]) {
      case '1' :
        foundStartX = j * 20;
        foundStartY = i * 20;
        break;

      case 'c' :
        coins.add(new Coin(j*20, i*20));
        break;

      case '3' :
        int tileWid = j * 20 - foundStartX + 20;
        int tileHei = 30;
        tiles.add(new Tile(foundStartX, foundStartY, tileWid, tileHei));
        break;
      
      case 'e' :
        enemys.add(new Enemy(j*20, i*20));
      break;
      }
    }
  }
}
