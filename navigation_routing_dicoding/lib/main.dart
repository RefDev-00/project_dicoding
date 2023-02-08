import 'package:flutter/material.dart';
import 'package:navigation_routing_dicoding/another_screen.dart';
import 'package:navigation_routing_dicoding/first_screen.dart';
import 'package:navigation_routing_dicoding/replacement_screen.dart';
import 'package:navigation_routing_dicoding/return_data_screen.dart';
import 'package:navigation_routing_dicoding/second_screen.dart';
import 'package:navigation_routing_dicoding/second_screen_withData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Navigation Dicoding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/', // membuat route untuk navigasi ke halaman lain
      routes: {
        '/': (context) => const FirstScreen(),
        '/secondScreen': (context) => const SecondScreen(),
        '/secondScreenWithData': (context) => SecondScreenWithData(
            ModalRoute.of(context)?.settings.arguments as String),
        '/returnDataScreen': (context) => ReturnDataScreen(),
        '/replacementScreen': (context) => const ReplacementScreen(),
        '/anotherScreen': (context) => const AnotherScreen()
      },
    );
  }
}
