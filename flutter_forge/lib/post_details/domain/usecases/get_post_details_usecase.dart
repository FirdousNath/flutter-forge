import '../repository/post_details_repository.dart';

class GetPostDetailsUseCase {
  final PostDetailsRepository repository;
  
  GetPostDetailsUseCase(this.repository);
  
  Future execute() {
    return repository.getPostDetails();
  }
}