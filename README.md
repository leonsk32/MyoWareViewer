## MyoWare Viewer
MyoWareで取得した筋電位を可視化する

## Requirements
- [MyoWare](https://www.switch-science.com/catalog/2682/)
- Arduino UNO

MyoWareのSignal PinをArduinoのA0に接続すること

## Notes
Processing.pde 4行目の

```Processing
String portname = Serial.list()[3];
```

のインデックスを適宜コンソール表示に従ってArduino用ポートに変更すること