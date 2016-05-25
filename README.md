## MyoWare Viewer
MyoWareで取得した筋電位を可視化する

## Requirements
- [MyoWare](https://www.switch-science.com/catalog/2682/)
- Arduino UNO

MyoWareのSignal PinをArduinoのA1に接続すること

## Notes
#### Port
Processing.pde 4行目の

```Processing
String portname = Serial.list()[3];
```

のインデックスを適宜コンソール表示に従ってArduino用ポートに変更すること

#### Grove
Groveの可視化も同様にできる  
ただしGroveは振動が激しく描画に大変な負荷がかかるので、描画が止まる場合はGraph.pde 24,25行目


```Processing
line((i-1) * k, values[i], i*k, values[i+1]); //For MyoWare
point((i-1)*k, values[i]); //For Grove
```

のコメントアウトを入れ替えること