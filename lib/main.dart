import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 double width = 60;
 double height = 100;
 Color _color = Colors.red;
 BoxShape _shape = BoxShape.rectangle;

  Widget myWidget(){
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: _color,shape: _shape,
      border: Border.all(width: 4,color: Colors.blue)
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "animatedWidget",
      home: Scaffold(appBar: AppBar(title: Text('Animated container'),),
        body:Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            child: GestureDetector(child: myWidget(),
            onTap: (){
              setState(() {
                height= 100;
                width=100;
                _shape=BoxShape.circle;
                _color=Colors.red;
              });
            },
            ),
          ),
        ) ,
      ),

    );
  }
}



// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//     );
//   }
// }
