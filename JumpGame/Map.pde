class map {

  void display() {

    for (int i = 0; i < 30; i++) {
      for (int j = 0; j < 100; j++) {
        if(worldMap[i][j] == 'x'){
          fill(255);
          rect(j*width/100, i*height/30, width/100, height/30);
        }
      }
    }
  }
}
 
