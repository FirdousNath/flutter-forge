import 'package:flutter_forge/domain/model/post_model.dart';
import 'package:flutter_forge/domain/usecases/get_posts_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

GetIt getIt = GetIt.instance;

class MockPostUsecase extends Mock implements GetPostsUseCase {}

GetPostsUseCase getMockUsecase({bool sendError = false}) {
  final mock = MockPostUsecase();
  if (sendError) {
    when(
      () => mock.execute(),
    ).thenThrow(
      Exception(),
    );
  } else {
    when(
      () => mock.execute(),
    ).thenAnswer(
      (_) => Future.value([
        Post(id: 1, title: "test1", body: "body1"),
        Post(id: 2, title: "test2", body: "body2"),
        Post(id: 3, title: "test3", body: "body3")
      ]),
    );
  }
  return mock;
}
