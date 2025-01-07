import 'package:dio/dio.dart';

abstract class PostDetailsRepository {
  Future getPostDetails();
}

class PostDetailsRepositoryImpl implements PostDetailsRepository {
  final Dio dio;
  
  PostDetailsRepositoryImpl(this.dio);
  
  @override
  Future getPostDetails() async {
    // Implementation here
  }
}