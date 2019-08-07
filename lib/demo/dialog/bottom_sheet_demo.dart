import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  String _choiceAction = '';

  _openBottomSheet() {
    _bottomSheetScaffoldKey.currentState
        .showBottomSheet((BuildContext context) {
      return BottomAppBar(
        child: Container(
          height: 90,
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(
                width: 16,
              ),
              Text('03:30 / 03:30'),
              Expanded(
                child: Text(
                  'Fix you - Coldplay',
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  Future _openModalBottomSheet() async {
    final action = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text('选择'),
                ListTile(
                  title: Text('Option A'),
                  onTap: () {
                    Navigator.pop(context, 'A');
                  },
                ),
                ListTile(
                  title: Text('Option B'),
                  onTap: () {
                    Navigator.pop(context, 'B');
                  },
                ),
                ListTile(
                  title: Text('Option C'),
                  onTap: () {
                    Navigator.pop(context, 'C');
                  },
                ),
              ],
            ),
          );
        });
    setState(() {
      _choiceAction = action;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('BottomSheetDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('选择的是$_choiceAction'),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: _openBottomSheet,
                  child: Text('Open BottomSheet'),
                ),
                FlatButton(
                  child: Text('Modal BottomSheet'),
                  onPressed: _openModalBottomSheet,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
