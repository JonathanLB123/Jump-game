// Jonathan, Max, Oscar

map world = new map();

String[] temp;
char[][] worldMap = new char[30][100];

PVector position, velocity, acceleration;

boolean left = false;
boolean right = false;
boolean jump = false;

gameLogic game = new gameLogic();
player player1 = new player();

void setup() {
  fullScreen();

  temp = loadStrings("map.txt");

  for(int i = 0; i < temp.length; i++){
    worldMap[i] = temp[i].toCharArray();
  }

  position = new PVector();
  velocity = new PVector();
  acceleration = new PVector();
}

void draw() {
  background(0, 0, 20);
  
  world.display();

  player1.update();
  player1.display();
  player1.gravety();
  player1.move();
  
  stroke(255);
  line(0,880,width,880);
}
