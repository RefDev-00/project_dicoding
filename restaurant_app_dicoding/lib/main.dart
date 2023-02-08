import 'package:flutter/material.dart';
import 'package:restaurant_app_dicoding/menuPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant App',
      initialRoute: MenuPage.routeName,
      routes: {
        MenuPage.routeName: (context) => MenuPage(),
      },
    );
  }
}
