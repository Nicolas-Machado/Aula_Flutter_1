import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _textoPiada = "Kaposke";
  var listaDePiadas = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
  ];
  Random random = new Random();

  void novaPiada() {
    int numero = random.nextInt(listaDePiadas.length);
    setState(() {
      _textoPiada = listaDePiadas[numero];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cachorro Bunitim"),
        backgroundColor: Colors.green,
      ),
      body: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "images/image1.jpg",
                fit: BoxFit.fitWidth,
              ),
              Text(_textoPiada),
              ElevatedButton(
                onPressed: novaPiada,
                child: Text("Nova"),
                style: ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
              )
            ],
          )),
    );
  }
}
