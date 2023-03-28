import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routerName,
        routes: {
          HomeScreen.routerName: (_) => HomeScreen(),
          SettingsScreen.routerName: (_) => SettingsScreen(),
        });
  }
}
