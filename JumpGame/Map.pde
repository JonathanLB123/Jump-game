class map {

  String[][] worldMap;

  void update() {
    String[] temp = loadStrings("map.txt");

    worldMap = new String[temp.length][];
    
    for (int i = 0; i < temp.length; i++) {
      worldMap[i] = split(temp[i], ',');
    }

    for (int i = 0; i < worldMap.length; i++) {
      for (int j = 0; j < 100; j++) {
        if (worldMap[i][j] == "x") {
          fill(255);
          rect(i*10, j*10, 50, 50);
        } 
      }
    }
  }
}
