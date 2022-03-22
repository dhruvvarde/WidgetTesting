import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint("Second");
    return Scaffold(
      body: Center(
        child: Container(
          child: Icon(Icons.delete),
        ),
      ),
    );
  }
}
