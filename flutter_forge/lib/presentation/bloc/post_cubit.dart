import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_forge/domain/usecases/get_posts_usecase.dart';
import 'package:flutter_forge/presentation/bloc/post_state.dart';

class PostCubit extends Cubit<PostState> {
  final GetPostsUseCase getPostsUseCase;

  PostCubit(this.getPostsUseCase) : super(PostInitial());

  Future<void> fetchPosts() async {
    try {
      emit(PostLoading());
      final posts = await getPostsUseCase.execute();
      emit(PostLoaded(posts));
    } catch (e) {
      emit(PostError(e.toString()));
    }
  }
}
