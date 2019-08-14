import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    '苹果',
    '香蕉',
    '柠檬',
  ];

  String _action = "Nothing";

  List<String> _selected = [];

  String _choice = '柠檬';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ChipDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(19),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: <Widget>[
                Chip(
                  label: Text('Life'),
                ),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('Haha'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('Berfy'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('岳'),
                  ),
                ),
                Chip(
                  label: Text('Berfy'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://s3.cn-north-1.amazonaws.com.cn/lclogo/edbbec12-729c-4c0a-9f4b-aaa6fe6afcc5_180x180.png'),
                    child: Text('岳'),
                  ),
                ),
                Chip(
                  label: Text('City'),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: '删除标记吗',
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ActionChip：$_action'),
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag) {
                    return ActionChip(
                      label: Text(tag),
                      onPressed: () {
                        setState(() {
                          _action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                ),
                Container(
                  width: double.infinity,
                  child: Text('FilterChip：${_selected.toString()}'),
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag) {
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (value) {
                        setState(() {
                          if (_selected.contains(tag)) {
                            _selected.remove(tag);
                          } else {
                            _selected.add(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ChoiceChip：${_choice}'),
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag) {
                    return ChoiceChip(
                      label: Text(tag),
                      selected: _choice == tag,
                      onSelected: (value) {
                        setState(() {
                          _choice = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.restore),
          onPressed: () {
            setState(() {
              _tags = [
                '苹果',
                '香蕉',
                '柠檬',
              ];

              _selected = [];

              _choice = "柠檬";
            });
          }),
    );
  }
}
