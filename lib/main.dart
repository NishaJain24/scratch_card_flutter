import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _enabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scratch Card"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Scratcher(
              brushSize: 30,
                color: Colors.pink,
                // image: ImageIcon(Icons.wallet_giftcard_rounded),
                accuracy: ScratchAccuracy.low,
                threshold: 50,
                onThreshold: (){
                print('Threshold Reahced');
                setState(() {
                  _enabled = false;
                });
                },
                child: Container(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.black,
                child: Center(
                  child: Text(" 300 Rs. ", style: TextStyle(color: Colors.white),),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
