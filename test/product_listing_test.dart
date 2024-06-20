import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobilelearningpath/main.dart'; // Make sure to import your main.dart file or the file where your MyApp widget is defined
import 'package:mobilelearningpath/widgets/productCard.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  testWidgets('Test Product Listing', (WidgetTester tester) async {
    await mockNetworkImagesFor(() async {
      await tester.pumpWidget(MainScreen());

      // Verify initial product listing by checking there
      // are at least 1 product card but it can be more
      expect(find.byType(ProductCard), findsWidgets);
    });
  });
}
