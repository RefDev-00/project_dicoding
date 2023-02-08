import 'package:flutter/material.dart';
import 'package:wisata_jogja_app/pages/Detail_Screen_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Jogja',
      theme: ThemeData(),
      home: DetailScreenPage(),
    );
  }
}
