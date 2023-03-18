// Jonathan, Max, Oscar

int[][] map;

PVector position, velocity, acceleration;

boolean left = false;
boolean right = false;
boolean jump = false;

gameLogic game = new gameLogic();
player player1 = new player();

void setup() {
  fullScreen();
  
  position = new PVector();
  velocity = new PVector();
  acceleration = new PVector();
}

void draw() {
  background(0, 0, 20);
  
  player1.update();
  player1.display();
  player1.gravety();
  player1.move();
  
  stroke(255);
  line(0,880,width,880);
}
