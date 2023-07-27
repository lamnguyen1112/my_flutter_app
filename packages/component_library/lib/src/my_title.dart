import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  final String value;
  const MyTitle({super.key, required this.value});
  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: const TextStyle(fontSize: 28),
    );
  }
}
