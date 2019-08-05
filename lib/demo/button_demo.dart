import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget floatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text('Button'),
          splashColor: Colors.grey,
          highlightColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          onPressed: () {},
          label: Text('Button'),
          splashColor: Colors.grey,
          highlightColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary,
//                      shape: BeveledRectangleBorder(
//                        borderRadius: BorderRadius.circular(5),
//                      ),
                  shape: StadiumBorder())),
          child: RaisedButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.grey,
            highlightColor: Colors.grey,
            elevation: 0,
//                  color: Theme.of(context).accentColor,
//                  highlightElevation: 0,
//                  textColor: Theme.of(context).accentColor,
//                  textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          onPressed: () {},
          label: Text('Button'),
          splashColor: Colors.grey,
          highlightColor: Colors.grey,
          elevation: 10,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget outlineButtoNDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary,
//                      shape: BeveledRectangleBorder(
//                        borderRadius: BorderRadius.circular(5),
//                      ),
                  shape: StadiumBorder())),
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.grey,
//                    highlightColor: Colors.grey,
            highlightedBorderColor: Colors.grey,
            borderSide: BorderSide(color: Colors.black87),
            textColor: Colors.black87,
//                  color: Theme.of(context).accentColor,
//                  highlightElevation: 0,
//                  textColor: Theme.of(context).accentColor,
//                  textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          onPressed: () {},
          label: Text('Button'),
          splashColor: Colors.grey,
          highlightColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget fixedWidthButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 160,
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightColor: Colors.grey,
            highlightedBorderColor: Colors.grey,
          ),
        ),
      ],
    );

    final Widget expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightColor: Colors.grey,
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 1,
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightColor: Colors.grey,
            highlightedBorderColor: Colors.grey,
          ),
        ),
      ],
    );

    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
            data: Theme.of(context).copyWith(
                buttonTheme: ButtonThemeData(
                    padding: EdgeInsets.symmetric(horizontal: 32))),
            child: ButtonBar(
              children: <Widget>[
                OutlineButton(
                  onPressed: () {},
                  child: Text('Button'),
                  splashColor: Colors.grey[100],
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  textColor: Colors.black,
                  highlightColor: Colors.grey,
                  highlightedBorderColor: Colors.grey,
                ),
                OutlineButton(
                  onPressed: () {},
                  child: Text('Button'),
                  splashColor: Colors.grey[100],
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  textColor: Colors.black,
                  highlightColor: Colors.grey,
                  highlightedBorderColor: Colors.grey,
                ),
              ],
            )),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('按钮'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            floatButtonDemo,
            raisedButtonDemo,
            outlineButtoNDemo,
            fixedWidthButtonDemo,
            expandedButtonDemo,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}
