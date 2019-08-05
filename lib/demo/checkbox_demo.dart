import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _checkBoxItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CheckBox'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _checkBoxItemA,
              onChanged: (value) {
                setState(() {
                  _checkBoxItemA = value;
                });
              },
              title: Text('CheckBox Item A'),
              subtitle: Text('Description'),
              secondary: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Icon(Icons.bookmark)],
              ),
              selected: _checkBoxItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  value: _checkBoxItemA,
                  onChanged: (value) {
                    setState(() {
                      _checkBoxItemA = value;
                    });
                  },
                  activeColor: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
