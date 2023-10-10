import 'package:flutter/material.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: drop(),);
  }
}
class drop extends StatefulWidget {
  const drop({super.key});

  @override
  State<drop> createState() => _dropState();
}

class _dropState extends State<drop> {
  List<String> coll=["ace","acet","acoe"];
  var selected='';
  var isselected='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(),
    body: Column(
      children: [
        DropdownMenu(onSelected:(isselect){
          setState(() {
            selected=isselect!;
          });
    },hintText:"select",  dropdownMenuEntries: coll.
        map<DropdownMenuEntry<String>>((val){
          return DropdownMenuEntry(value: val, label: val);
        }).toList()),
      ElevatedButton(onPressed: (){

        
      }, child: Text("jgfuyegf")),
      Text("$selected")],
      

    )
      ,

    );
  }
}

