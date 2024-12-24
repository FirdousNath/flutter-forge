import 'package:flutter_forge/domain/repository/post_repository.dart';
import 'package:flutter_forge/domain/usecases/get_posts_usecase.dart';
import 'package:flutter_forge/presentation/bloc/post_cubit.dart';
import 'package:flutter_forge/utility/constants.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final GetIt getIt = GetIt.instance;

void setupDI() {
  // Registering Dio
  getIt.registerLazySingleton(
    () => Dio(BaseOptions(baseUrl: baseUrl)),
  );

  // Registering PostRepository
  getIt.registerLazySingleton<PostRepository>(
    () => PostRepositoryImpl(getIt<Dio>()),
  );

  // Registering GetPostsUseCase
  getIt.registerLazySingleton<GetPostsUseCase>(
    () => GetPostsUseCase(getIt<PostRepository>()),
  );

  // Registering PostCubit
  getIt.registerFactory(() => PostCubit(getIt<GetPostsUseCase>()));
}
