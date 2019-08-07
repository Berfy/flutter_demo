import 'package:flutter/material.dart';

enum Action { Ok, Cancel }

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = 'Nothing';

  Future _openAlertDialog() async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('AlertDialog'),
            content: Text('是否确定点击？'),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pop(context, Action.Cancel);
                },
                child: Text('取消'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context, Action.Ok);
                },
                child: Text('确定'),
              ),
            ],
          );
        });
    if (null == action) return;
    setState(() {
      switch (action) {
        case Action.Ok:
          _choice = "确定";
          break;
        case Action.Cancel:
          _choice = "取消";
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('你的选择是：$_choice'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Open AlertDialog'),
                  onPressed: _openAlertDialog,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
