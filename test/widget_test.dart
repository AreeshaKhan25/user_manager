import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:user_manager/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const UserManagerApp());
    expect(find.byType(NavigationBar), findsOneWidget);
  });
}
