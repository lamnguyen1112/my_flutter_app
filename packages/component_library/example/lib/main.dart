import 'package:component_library/component_library.dart';
import 'package:example/story_component.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: ComponentLocalizations.localizationsDelegates,
      supportedLocales: ComponentLocalizations.supportedLocales,
      home: StoryComponent(),
    );
  }
}
