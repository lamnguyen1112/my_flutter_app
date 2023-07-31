import 'package:flutter/material.dart';
import 'package:my_flutter_app/src/home_page.dart';
import 'package:component_library/component_library.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: ComponentLocalizations.localizationsDelegates,
      supportedLocales: ComponentLocalizations.supportedLocales,
      home: HomePage(),
    );
  }
}
