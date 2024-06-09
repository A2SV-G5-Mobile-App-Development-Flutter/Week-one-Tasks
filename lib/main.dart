import 'package:flutter/material.dart';
import 'package:mobilelearningpath/screens/newProduct.dart';
import 'package:mobilelearningpath/screens/productDetail.dart';
import 'package:mobilelearningpath/screens/productList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: ProductDetailPage()
        // home: const ProductList(),
        home: AddProductPage());
  }
}
