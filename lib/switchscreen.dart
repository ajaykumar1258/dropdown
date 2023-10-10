import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: switch1(),
    );
  }
}

class switch1 extends StatefulWidget {
  const switch1({super.key});

  @override
  State<switch1> createState() => _switch1State();
}

class _switch1State extends State<switch1> {
  bool switched = false;
  bool switched1=false;
  bool switched2=false;
  bool switched3=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch screen"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Icon(
                  Icons.brightness_2,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 58.0),
                child: Text(
                  "Android switch",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 58.0),
                child: Switch(activeColor: Colors.yellow,activeTrackColor: Colors.blue,
                    value: switched,
                    onChanged: (bool value) {
                      setState(() {
                        switched = value;
                      });
                    }),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Icon(
                  Icons.brightness_2,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 58.0),
                child: Text(
                  "IOS switch",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 98.0),
                child: CupertinoSwitch(activeColor: Colors.black,trackColor: Colors.purpleAccent,
                    value: switched1,
                    onChanged: (bool val) {
                      setState(() {
                        switched1 = val;
                      });
                    }),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Icon(
                  Icons.brightness_2,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 58.0),
                child: Text(
                  "Adaptive switch",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0),
                child: Switch(activeTrackColor: Colors.orange,activeColor: Colors.red,
                    value: switched2,
                    onChanged: (bool val1) {
                      setState(() {
                        switched2 = val1;
                      });
                    }),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Icon(
                  Icons.brightness_2,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 58.0),
                child: Text(
                  "Image switch",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 58.0),
                child: Switch(activeTrackColor: Colors.indigo,activeThumbImage: AssetImage("assets/img_1.png"),
                    value: switched3,
                    onChanged: (bool val3) {
                      setState(() {
                        switched3 = val3;
                      });
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}
