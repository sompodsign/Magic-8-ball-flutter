import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
        ),
        body: boss(),
      ),
    ),
  );
}

class boss extends StatefulWidget {
  const boss({Key? key}) : super(key: key);

  @override
  _bossState createState() => _bossState();
}

class _bossState extends State<boss> {
  int randomAnswer = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: (Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              randomAnswer = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$randomAnswer.png'),
        ),
      )),
    );
  }
}
