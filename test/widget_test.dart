// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testtwentysix/app_widget.dart';

import 'package:testtwentysix/main_common.dart';

void main() {
  setUpAll(() {
    // This setup code has an error
    throw Exception("Failed to initialize something critical for tests");
  });

  test("1+1 == 2", () {
    // This test will never even run because setUpAll failed.
    // The test runner will mark it as failed.
    expect(1 + 1 == 2, true);
  });
}
