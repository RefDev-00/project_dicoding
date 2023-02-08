import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        height: 100,
        width: 100,
        padding: EdgeInsets.all(10),
        child: Container(
          color: Colors.green,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
