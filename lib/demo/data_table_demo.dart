import 'package:flutter/material.dart';
import 'package:myapp/model/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  int _sortColumnIndex;
  bool _sortAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('DataTableDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            DataTable(
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              onSelectAll: (bool value) {

              },
              columns: [
                DataColumn(
                    label: Text('标题'),
                    onSort: (int index, bool ascending) {
                      setState(() {
                        _sortColumnIndex = index;
                        _sortAscending = ascending;
                        posts.sort((a, b) {
                          if (!ascending) {
                            final c = a;
                            a = b;
                            b = c;
                          }
                          return a.title.length.compareTo(b.title.length);
                        });
                      });
                    }),
                DataColumn(label: Text('作者')),
                DataColumn(label: Text('图片')),
              ],
//              rows: [
//                DataRow(
//                  cells: [
//                    DataCell(
//                      Text('111'),
//                    ),
//                    DataCell(
//                      Text('Berfy'),
//                    ),
//                  ],
//                ),
//                DataRow(
//                  cells: [
//                    DataCell(
//                      Text('222'),
//                    ),
//                    DataCell(
//                      Text('Berfy'),
//                    ),
//                  ],
//                ),
//                DataRow(
//                  cells: [
//                    DataCell(
//                      Text('333'),
//                    ),
//                    DataCell(
//                      Text('Berfy'),
//                    ),
//                  ],
//                ),
//              ],
              rows: posts.map((post) {
                return DataRow(
                  selected: post.selected,
                  onSelectChanged: (bool value) {
                    setState(() {
                      if (post.selected != value) {
                        post.selected = value;
                      }
                    });
                  },
                  cells: [
                    DataCell(
                      Text(post.title),
                    ),
                    DataCell(
                      Text(post.author),
                    ),
                    DataCell(
                      Image.network(post.imageUrl),
                    ),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
