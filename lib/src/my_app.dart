import 'package:flutter/material.dart';
import 'package:component_library/component_library.dart';
import 'package:my_flutter_app/src/main_tab_screen.dart';
import 'package:my_flutter_app/src/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: ComponentLocalizations.localizationsDelegates,
      supportedLocales: ComponentLocalizations.supportedLocales,
      locale: const Locale('en'),
      // home: MainTabScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const MainTabScreen(),
      },
    );
  }
}
