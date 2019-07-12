import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32, color: Colors.white),
//            color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            margin: EdgeInsets.all(20),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all(
                    color: Colors.indigoAccent[100],
                    width: 3,
                    style: BorderStyle.solid),
//                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      color: Color.fromRGBO(16, 20, 188, 1),
                      blurRadius: 25,
                      spreadRadius: -2.0),
                ],
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(7, 102, 255, 1),
                  Color.fromRGBO(3, 25, 128, 1)
                ])),
          ),
          Container(
            child: Icon(Icons.add_location, size: 30, color: Colors.white),
//            color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all(
                    color: Colors.yellow[100],
                    width: 6,
                    style: BorderStyle.solid),
//                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(-20, -10),
                      color: Color.fromRGBO(16, 20, 5, 1),
                      blurRadius: 25,
                      spreadRadius: -2.0),
                ],
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(7, 111, 20, 1),
                  Color.fromRGBO(3, 100, 60, 1)
                ])),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
        text: TextSpan(
            text: 'Berfy',
            style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 34,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100,
            ),
            children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100,
            ),
          )
        ]));
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 26.0,
  );

  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '《$_title》——$_author。\n'
      '君不见长江之水天上来，'
      '奔流到海不复回。'
      '君不见高堂明镜悲白发，'
      '朝如青丝暮成雪。'
      '人生得意须尽欢，'
      '莫使金樽空对月。'
      '天生我材必有用，',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 10,
      overflow: TextOverflow.ellipsis,
    );
  }
}
