// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import 'package:bdd_widget_test/step/i_see_widget.dart';
import 'package:bdd_widget_test/step/i_wait.dart';
import './step/i_see_posts_list.dart';
import 'package:bdd_widget_test/step/i_dont_see_widget.dart';
import 'package:bdd_widget_test/step/i_see_text.dart';

void main() {
  group('''Posts''', () {
    testWidgets('''Users should see list of Posts''', (tester) async {
      await theAppIsRunning(tester);
      await iSeeWidget(tester, CircularProgressIndicator);
      await iWait(tester);
      await iSeePostsList(tester);
      await iDontSeeWidget(tester, CircularProgressIndicator);
    });
    testWidgets('''Users should see error while fetching post''',
        (tester) async {
      await theAppIsRunning(tester, sendError: true);
      await iSeeText(tester, "Api failed error");
      await iDontSeeWidget(tester, CircularProgressIndicator);
    });
  });
}
