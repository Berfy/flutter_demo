import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = false;

  void _handleRadioValueChanged(int value) {
    setState(() {
//      _radioGroupA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SwitchDemo'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SwitchListTile(
                value: _switchItemA,
                onChanged: (value) {
                  setState(() {
                    _switchItemA = value;
                  });
                },
                title: Text('Switch Item A'),
                subtitle: Text('Description'),
                secondary: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                        _switchItemA ? Icons.visibility : Icons.visibility_off),
                  ],
                ),
                selected: _switchItemA,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
//                  Text(
//                    _SwitchItemA ? "●" : "○",
//                    style: TextStyle(fontSize: 32),
//                  ),
//                  Switch(
//                    value: _switchItemA,
//                    onChanged: (value) {
//                      setState(() {
//                        _switchItemA = value;
//                      });
//                    },
//                    activeColor: Colors.black,
//                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
