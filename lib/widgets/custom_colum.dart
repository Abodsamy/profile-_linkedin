import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  final String number;
  final String title;

  const CustomColumn({
    super.key,
    required this.number,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          number,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
