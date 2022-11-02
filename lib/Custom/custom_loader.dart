import 'package:example_app/Constant/c_colors.dart';
import 'package:flutter/material.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: mainColor,
        strokeWidth: 2.75,
      ),
    );
  }
}
