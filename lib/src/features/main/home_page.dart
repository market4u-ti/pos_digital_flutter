import 'package:flutter/material.dart';
import 'package:flutter_pos_digital/design/theme/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary.fiveHundred,
        title: Text(
          "Boa sorte, André.",
          style: TextStyle(color: AppColors.neutral.oneHundred),
        ),
      ),
    );
  }
}
