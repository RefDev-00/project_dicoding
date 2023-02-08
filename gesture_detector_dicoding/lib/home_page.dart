import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double boxsize = 150.0;
  int countTap = 0;
  int countDoubleTap = 0;
  int countLongPress = 0;

  //Variabel Positioned
  double posX = 0.0;
  double posY = 0.0;

  //Method center
  void center(BuildContext context) {
    posX = (MediaQuery.of(context).size.width / 2) - boxsize / 2;
    posY = (MediaQuery.of(context).size.height / 2) - boxsize / 2 - 30;

    setState(() {
      this.posX = posX;
      this.posY = posY;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (posX == 0) {
      center(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gesture Detector',
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: posX,
            left: posY,
            child: GestureDetector(
              //Drag Vertical Container
              // onVerticalDragUpdate: (DragUpdateDetails details) {
              //   setState(() {
              //     double delta = details.delta.dy;
              //     posX += delta;
              //   });
              // },
              //Drag Horizontal Container
              // onHorizontalDragUpdate: (DragUpdateDetails details) {
              //   setState(() {
              //     double delta = details.delta.dx;
              //     posY += delta;
              //   });
              // },
              //Drag Vertical & Horizontal together
              onPanUpdate: (DragUpdateDetails details) {
                setState(() {
                  double deltaX = details.delta.dx;
                  double deltaY = details.delta.dy;
                  posX += deltaX;
                  posY += deltaY;
                });
              },
              onTap: () {
                setState(() {
                  countTap += 2;
                });
              },
              onDoubleTap: () {
                setState(() {
                  countDoubleTap++;
                });
              },
              onLongPress: () {
                setState(() {
                  countLongPress++;
                });
              },
              child: Container(
                height: boxsize,
                width: boxsize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.brown,
        padding: EdgeInsets.all(20.0),
        child: Text(
          'Taps: $countTap - Double Taps: $countDoubleTap - Long Press: $countLongPress',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
