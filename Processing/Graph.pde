class Graph{
PFont font;
 
  Graph(){
    font = createFont("Calisto MT Bold Italic", 10);
    textFont(font);
  }
  
  void draw(){
    background(255);
    stroke(0);
    fill(0);
    for(int i = 0; i < 1000; i += 50){
      strokeWeight(1);
      line(0, i, 1000, i);
      strokeWeight(1);
      textAlign(LEFT);
      text(i, 1010, i+5);
    }
    
    stroke(0, 0, 255);
    strokeWeight(3);
    for(int i=0; i<numSample-1; i++){
      line((i-1) * k, values[i], i*k, values[i+1]);
    }
    stroke(255,0,0);
    line(0, average, 1000, average);
  }
}