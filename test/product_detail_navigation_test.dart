import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobilelearningpath/main.dart';
import 'package:mobilelearningpath/widgets/productCard.dart'; // Make sure to import your main.dart file or the file where your MyApp widget is defined

void main() {
  testWidgets('Test Product Detail Page Navigation',
      (WidgetTester tester) async {
    await tester.pumpWidget(MainScreen());

    // Tap on a product card to navigate to detail page
    await tester.tap(find.byType(ProductCard).first);
    await tester.pumpAndSettle();

    // Verify the product detail page is shown
    expect(find.textContaining('Size'), findsOneWidget);

    // Tap the back button
    await tester.tap(find.byIcon(Icons.chevron_left));
    await tester.pumpAndSettle();

    // Verify we are back on the product listing page
    expect(find.byType(ProductCard), findsWidgets);
  });
}
