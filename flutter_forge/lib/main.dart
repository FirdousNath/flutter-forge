import 'package:flutter/material.dart';
import 'package:flutter_forge/presentation/screens/post_list_screens.dart';
import 'package:flutter_forge/utility/di.dart';

void main() {
  runApp(const MyApp());
  setupDI();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter forge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PostListScreen(),
    );
  }
}
