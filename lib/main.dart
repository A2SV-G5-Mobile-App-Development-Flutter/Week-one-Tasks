import 'package:flutter/material.dart';
import 'package:mobilelearningpath/screens/editProduct.dart';
import 'package:mobilelearningpath/screens/newProduct.dart';
import 'package:mobilelearningpath/screens/productDetail.dart';
import 'package:mobilelearningpath/screens/productList.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ProductList(), // Home Screen
        '/productDetail': (context) => ProductDetail(), // Product detail screen
        '/newProduct': (context) => NewProduct(), // Add product screen
        '/editProduct': (context) => EditProduct(), // Edit product screen
      },
    );
  }
}
