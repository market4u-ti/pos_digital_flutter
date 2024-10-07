import 'package:flutter/material.dart';
import 'package:flutter_pos_digital/src/features/main/home_page.dart';


class BaseMaterialApp extends StatelessWidget {
  const BaseMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Market4u POS",
      home: HomePage(),
    );
  }
}
