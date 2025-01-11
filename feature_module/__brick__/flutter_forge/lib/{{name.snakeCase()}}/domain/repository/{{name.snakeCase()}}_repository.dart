import 'package:dio/dio.dart';

abstract class {{name.pascalCase()}}Repository {
  Future get{{name.pascalCase()}}();
}

class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  final Dio dio;
  
  {{name.pascalCase()}}RepositoryImpl(this.dio);
  
  @override
  Future get{{name.pascalCase()}}() async {
    // Implementation here
  }
}