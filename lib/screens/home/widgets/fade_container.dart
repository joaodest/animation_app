import 'package:flutter/material.dart';

class FadeContainer extends StatelessWidget {
  const FadeContainer({Key? key, required this.fadeAnimation}) : super(key: key);

  final Animation<Color?> fadeAnimation;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "fade",
      child: Container(
        decoration: BoxDecoration(
          color: fadeAnimation.value
        ),
      ),
    );
  }
}
