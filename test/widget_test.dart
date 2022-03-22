// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_test_utils/image_test_utils.dart';
import 'package:widget_testing/SecondScreen.dart';
import 'package:widget_testing/ThirdScreen.dart';

import 'package:widget_testing/main.dart';

void main() {
  Widget createWidgetForTesting({Widget? child}){
    return MaterialApp(
      home: child,
    );
  }
  testWidgets("Check First Tap Button", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.tap(find.byKey(Key("navigateToDetails")));
    await tester.pump();
    tester.pumpAndSettle();
  });

  testWidgets("Check Second Tap Button", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.tap(find.byKey(Key("profile")));
    await tester.pump();
  });
  testWidgets("Should show image", (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      // await tester.pumpWidget(ThirdScreen());
      await tester.pumpWidget(createWidgetForTesting(child: new ThirdScreen()));
      expect(find.byType(Image), findsOneWidget);
      final Image image = find.byType(Image).evaluate().single.widget as Image;
        print(image);
    });
;
  });
}
