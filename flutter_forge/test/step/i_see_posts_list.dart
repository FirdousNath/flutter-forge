import 'package:bdd_widget_test/step/i_see_text.dart';

import 'package:flutter_test/flutter_test.dart';

/// Usage: I see posts list
Future<void> iSeePostsList(WidgetTester tester) async {
  await iSeeText(tester, "test1");
  await iSeeText(tester, "body1");

  await iSeeText(tester, "test2");
  await iSeeText(tester, "body2");

  await iSeeText(tester, "test3");
  await iSeeText(tester, "body3");
}
