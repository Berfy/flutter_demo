import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget {
  final Post post;

  PostShow(this.post);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${post.title}'),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Image.network(
            post.imageUrl,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${post.title}',
                  style: Theme.of(context).textTheme.title,
                ),
                Text(
                  '${post.author}',
                  style: Theme.of(context).textTheme.subhead,
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  '${post.description}',
                  style: Theme.of(context).textTheme.body1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
