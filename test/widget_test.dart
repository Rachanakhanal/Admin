// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Example test', (WidgetTester tester) async {
    // Build your widget tree
    await tester.pumpWidget(const MaterialApp());

    // Check that the text '0' is present in the widget tree
    expect(find.text('0'), findsOneWidget);

    // Perform some action that changes the text to '1'
    // In this example, we're tapping on a button that increments the text value
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    // Check that the text '1' is present in the widget tree
    expect(find.text('1'), findsOneWidget);
  });
}
