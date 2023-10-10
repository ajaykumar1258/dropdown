import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: swich(),
    );
  }
}

class swich extends StatefulWidget {
  const swich({super.key});

  @override
  State<swich> createState() => _swichState();
}

class _swichState extends State<swich> {
  bool isswitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Switch(
            inactiveTrackColor: Colors.black,
            activeTrackColor: Colors.blue,
            activeColor: Colors.green,
            inactiveThumbColor: Colors.indigo,
            activeThumbImage: AssetImage("assets/img_1.png"),
            inactiveThumbImage: AssetImage("assets/img_1.png"),
            value: isswitch,
            onChanged: (bool value) {
              setState(() {
                isswitch = value;
              });
            },
          ),
          Container(
            color: Colors.black,
            height: 100,
            width: 100,
          )
        ],
      ),
    );
  }
}
