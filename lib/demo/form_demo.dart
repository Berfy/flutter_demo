import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
          data: Theme.of(context).copyWith(
            primaryColor: Colors.blue,
          ),
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[RegisterForm()],
            ),
          )),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String userName, passWord;
  bool autoValidate = false;

  void submitRegisterForm() {
    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      debugPrint('用户名：$userName');
      debugPrint('密码：$passWord');
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('注册ing'),
          backgroundColor: Theme.of(context).accentColor,
        ),
      );
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }

  String validateUserName(value) {
    if (value.isEmpty) {
      return '用户名不能为空';
    }
    return null;
  }

  String validatePassWord(value) {
    if (value.isEmpty) {
      return '密码不能为空';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: registerFormKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: '用户名',
                helperText: '',
              ),
              onSaved: (value) {
                userName = value;
              },
              validator: validateUserName,
              autovalidate: autoValidate,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: '密码',
                helperText: '',
              ),
              onSaved: (value) {
                passWord = value;
              },
              validator: validatePassWord,
              autovalidate: autoValidate,
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text(
                  '注册',
                  style: TextStyle(color: Colors.white),
                ),
                elevation: 0,
                onPressed: submitRegisterForm,
              ),
            )
          ],
        ));
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.addListener(() {
      debugPrint('input：${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      onSubmitted: (value) {
        debugPrint('submit：$value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: '标题',
        hintText: '请填写标题',
        border: OutlineInputBorder(),
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}
