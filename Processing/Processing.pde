import processing.serial.*;

Serial s;
String portname = Serial.list()[3];
int baudrate = 9600;
String serialMsg = "";
int value = 0;
int[] values;
int average;
Graph g;
int numSample = 500;
float k;


void setup(){
  size(1030,1000);
  frameRate(30);
  strokeCap(ROUND);
  
  k = 1000/(float)numSample;
  values = new int[numSample];
  for(int i=0; i<numSample; i++) values[i] = 0;
  
  s = new Serial(this, portname, baudrate);
  s.bufferUntil('\n');
  println(Serial.list());
  g = new Graph();
}

void draw(){
  while(s.available() > 0){
    serialMsg = s.readStringUntil('\n');
    if(serialMsg != ""){
      getInput(serialMsg);
      g.draw();
    }
  }
}