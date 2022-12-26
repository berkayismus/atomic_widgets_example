import 'package:atomic_widgets_example/product_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atomic Widgets Example',
      home: ProductPageWrapperProvider(),
    );
  }
}
