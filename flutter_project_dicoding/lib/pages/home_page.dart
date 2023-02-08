import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Appbar
        title: Text('First Screen'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded),
          ),
        ],
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            )),
      ),
      body: Center(
          //Body
          child: Container(
        margin: EdgeInsets.only(left: 50, right: 50),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.blue, // memberikan warna pada container
          border: Border.all(color: Colors.green, width: 3),
          shape: BoxShape.circle, // membuat lingkaran
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(3, 6),
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
            child: Text(
          'Power',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        )),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add_circle,
        ),
        onPressed: () {},
      ),
    );
  }
}
