import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  return runApp(
    MaterialApp(

      home: Scaffold(

        backgroundColor: Color(0xFF131F22),
        appBar: AppBar(
          title: Text('8 balls'),
          backgroundColor: Color(0xFF202F36),

        ),

        body: Balls(),
      ),

    ),

  );
}

class Balls extends StatefulWidget {
  const Balls({Key? key}) : super(key: key);

  @override
  State<Balls> createState() => _BallsState();
}

class _BallsState extends State<Balls> {

  var leftsidenum = 1;
  var rightsidenum = 1;
  void _change_value_of_dices(){
    leftsidenum = Random().nextInt(5) +1 ;
    rightsidenum = Random().nextInt(5) +1;
    
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: () {
          setState(() {
            _change_value_of_dices();
            print('dice num = $leftsidenum');
          });

        },
        icon: Image.asset('images/ball$leftsidenum.png'),
        color: Colors.white,
        iconSize: 260.0,
      ),
    );
  }
}
