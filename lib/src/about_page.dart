import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MyTitle(value: 'About Page'),
      ),
    );
  }
}
