import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

    class BallPage extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.blue[600],
          appBar: AppBar(
            backgroundColor: Colors.grey[900],
            title: Text('Ask me anything'),
            centerTitle: true,
          ),
          body: Ball(),
        );
      }
    }

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
  
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
         // print('I got Clicked');
          setState(() {
            ballNumber = Random().nextInt(5) + 1 ;
            //print('$ballNumber');
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      )
    );
  }
}