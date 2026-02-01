import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  final String imagePath;
  final double radius;

  const MyCircleAvatar({
    super.key,
    required this.imagePath,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(imagePath),
    );
  }
}
