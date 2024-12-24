import 'package:dio/dio.dart';
import 'package:flutter_forge/domain/model/post_model.dart';

// post_repository.dart
abstract class PostRepository {
  Future<List<Post>> getPosts();
}

// post_repository_impl.dart
class PostRepositoryImpl implements PostRepository {
  final Dio dio;

  PostRepositoryImpl(this.dio);

  @override
  Future<List<Post>> getPosts() async {
    final response = await dio.get('/posts');
    return (response.data as List)
        .map(
          (json) => Post.fromJson(json),
        )
        .toList();
  }
}
