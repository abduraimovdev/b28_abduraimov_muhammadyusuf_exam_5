import 'package:b28_abduraimov_muhammadyusuf_exam_5/presentation/pages/product_page.dart';
import 'package:b28_abduraimov_muhammadyusuf_exam_5/presentation/pages/products_page.dart';
import 'package:flutter/material.dart';

class RunApp extends StatefulWidget {
  const RunApp({super.key});

  @override
  State<RunApp> createState() => _RunAppState();
}

class _RunAppState extends State<RunApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProductsPage(),
      routes: {
        ProductsPage.id: (context) => const ProductsPage(),
        ProductPage.id: (context) => const ProductPage(),
      },
    );
  }
}
