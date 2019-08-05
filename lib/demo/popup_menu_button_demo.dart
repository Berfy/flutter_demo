import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String currentItem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('PopupMenu按钮'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(currentItem),
                PopupMenuButton(
                  onSelected: (value) {
                    print(value);
                    setState(() {
                      currentItem = value;
                    });
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      value: '1',
                      child: Text('选项1'),
                    ),
                    PopupMenuItem(
                      value: '2',
                      child: Text('选项2'),
                    ),
                    PopupMenuItem(
                      value: '3',
                      child: Text('选项3'),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
