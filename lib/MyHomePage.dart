import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

class HomePage extends StatelessWidget {
   const HomePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


   // var r = List<int>.generate(255, (i) => i + 1).shuffle.hashCode;
   // var g = List<int>.generate(255, (i) => i + 1).shuffle.hashCode;
   // var b = List<int>.generate(255, (i) => i + 1).shuffle.hashCode;

    var first = new List<int>.generate(255, (i) => i + 1);
    first.shuffle();
    var r = first[10];

    var second = new List<int>.generate(255, (i) => i + 1);
    second.shuffle();
    var g = first[20];

    var third = new List<int>.generate(255, (i) => i + 1);
    third.shuffle();
    var b = first[30];

   Color color =  Color.fromRGBO(r, g, b, 1);

    return Scaffold(
    backgroundColor: color,
    body: InkWell(
       onTap: () {
         Phoenix.rebirth(context);
       },
         child: Center(
         child: Text('Hi,Proffesor', style: TextStyle(fontSize: 40),),
       ),
       ),
      );
  }
}
