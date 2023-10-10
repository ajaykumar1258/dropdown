import 'package:flutter/material.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: dropdown(),);
  }
}

class dropdown extends StatefulWidget {
  const dropdown({super.key});

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  bool? isenabled=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Checkbox(value: isenabled, onChanged:(val){
          setState(() {
            isenabled=val;
          });

        },checkColor: Colors.green,activeColor: Colors.red,
        visualDensity: VisualDensity(horizontal: 4,vertical: -4),)
        ],
      ),
    );
  }
}
