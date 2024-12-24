import 'package:flutter/material.dart';
import 'package:flutter_forge/domain/model/post_model.dart';

class PostListTile extends StatelessWidget {
  const PostListTile(this.post, {super.key});

  final Post post;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(post.title),
          subtitle: Text(post.body),
        ),
        const Divider(height: 0.5),
      ],
    );
  }
}
