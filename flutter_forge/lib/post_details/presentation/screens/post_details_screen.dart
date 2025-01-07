import 'package:flutter/material.dart';

class PostDetailsScreen extends StatelessWidget {
  const PostDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feature: PostDetails'),
      ),
      body: const Center(
        child:  Text('Welcome to PostDetails!'),
      ),
    );
  }
}