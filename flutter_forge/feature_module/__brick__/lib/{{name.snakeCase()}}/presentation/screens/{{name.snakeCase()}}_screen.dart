import 'package:flutter/material.dart';

class {{name.pascalCase()}}Screen extends StatelessWidget {
  const {{name.pascalCase()}}Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feature: {{name.pascalCase()}}'),
      ),
      body: const Center(
        child:  Text('Welcome to {{name.pascalCase()}}!'),
      ),
    );
  }
}