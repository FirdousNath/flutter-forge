import 'package:flutter_forge/presentation/bloc/post_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_forge/main.dart';

import '../mocks.dart';

Future<void> theAppIsRunning(
  WidgetTester tester, {
  bool sendError = false,
}) async {
  if (getIt.isRegistered<PostCubit>()) {
    getIt.unregister<PostCubit>();
  }
  getIt.registerFactory(
    () => PostCubit(
      getMockUsecase(
        sendError: sendError,
      ),
    ),
  );

  await tester.pumpWidget(const MyApp());
}
