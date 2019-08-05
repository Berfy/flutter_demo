import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      elevation: 0,
      backgroundColor: Colors.black87,
//      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );

    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {
        debugPrint('afafa');
      },
      icon: Icon(Icons.add),
      label: Text('Add'),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('事件Button'),
        elevation: 0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}