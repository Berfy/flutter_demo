import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 100,
              minWidth: 100
            ),
              child: Container(
                color: Color.fromRGBO(3, 54, 255, 1),
              ),
          )
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 16/9 ,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        SizedBox(
          width: 200,
          height: 300,
          child: Container(
            alignment: Alignment(0, -0.9),
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0)),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              shape: BoxShape.circle,
              gradient: RadialGradient(colors: [
                Color.fromRGBO(7, 102, 255, 1),
                Color.fromRGBO(3, 54, 255, 1),
              ]),
            ),
            child: Icon(
              Icons.mood,
              color: Colors.white,
              size: 32,
            ),
          ),
        ),
        Positioned(
          right: 90,
          top: 20,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 22,
          ),
        ),
        Positioned(
          right: 10,
          top: 95,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 15,
          ),
        ),
        Positioned(
          right: 10,
          top: 70,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 8,
          ),
        ),
        Positioned(
          right: 25,
          top: 180,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 20,
          ),
        ),
        Positioned(
          right: 110,
          bottom: 20,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 30,
          ),
        ),
        Positioned(
          right: 11,
          bottom: 10,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 12,
          ),
        ),
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
