import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:multi/main.dart';

void main() {
  testWidgets('Portfolio smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('Portofolio Saya'), findsOneWidget);
    expect(find.text('Achmad Hasbil Wafi Rahmawan'), findsOneWidget);
    expect(find.text('NIM 245150407111012'), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (widget) => widget is Image && widget.image is NetworkImage,
      ),
      findsNWidgets(2),
    );
  });
}
