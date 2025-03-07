// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:f_getxstate_demo/main.dart';

void main() {
  testWidgets('Reset-Increment-Reset test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byKey(Key('resetButton')));
    await tester.pump();

    expect(find.text('0'), findsNWidgets(3));

    await tester.tap(find.byKey(Key('incrementButton')));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('1'), findsNWidgets(3));

    await tester.tap(find.byKey(Key('resetButton')));
    await tester.pump();

    expect(find.text('0'), findsNWidgets(3));
  });

  testWidgets('Reset-I-I-I-I-D-Reset test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byKey(Key('resetButton')));
    await tester.pump();

    expect(find.text('0'), findsNWidgets(3));

    await tester.tap(find.byKey(Key('incrementButton')));
    await tester.pump();

    await tester.tap(find.byKey(Key('incrementButton')));
    await tester.pump();

    await tester.tap(find.byKey(Key('incrementButton')));
    await tester.pump();

    await tester.tap(find.byKey(Key('incrementButton')));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('4'), findsNWidgets(3));

    await tester.tap(find.byKey(Key('decrementButton')));
    await tester.pump();

    expect(find.text('3'), findsNWidgets(3));

    await tester.tap(find.byKey(Key('resetButton')));
    await tester.pump();

    expect(find.text('0'), findsNWidgets(3));
  });

  testWidgets('Reset-I-I-I-Nav-I-Back-Reset test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byKey(Key('resetButton')));
    await tester.pump();

    expect(find.text('0'), findsNWidgets(3));

    await tester.tap(find.byKey(Key('incrementButton')));
    await tester.pump();

    await tester.tap(find.byKey(Key('incrementButton')));
    await tester.pump();

    await tester.tap(find.byKey(Key('incrementButton')));
    await tester.pump();

    await tester.tap(find.byKey(Key('page2Button')));
    await tester.pumpAndSettle();

    expect(find.text('3'), findsNWidgets(1));

    await tester.tap(find.byKey(Key('incrementButtonPage2')));
    await tester.pump();

    expect(find.text('4'), findsNWidgets(1));

    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    expect(find.text('4'), findsNWidgets(3));

    await tester.tap(find.byKey(Key('resetButton')));
    await tester.pump();

    expect(find.text('0'), findsNWidgets(3));
  });
}
