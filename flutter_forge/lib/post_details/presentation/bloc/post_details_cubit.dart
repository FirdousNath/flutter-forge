import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_forge/post_details/presentation/bloc/post_details_state.dart';

class PostDetailsCubit extends Cubit<PostDetailsState> {
  PostDetailsCubit() : super(PostDetailsInitial());
  // Add methods to manage state
}
