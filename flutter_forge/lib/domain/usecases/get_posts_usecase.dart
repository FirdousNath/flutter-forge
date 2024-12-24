import 'package:flutter_forge/domain/model/post_model.dart';
import 'package:flutter_forge/domain/repository/post_repository.dart';

class GetPostsUseCase {
  final PostRepository repository;

  GetPostsUseCase(this.repository);

  Future<List<Post>> execute() {
    return repository.getPosts();
  }
}
