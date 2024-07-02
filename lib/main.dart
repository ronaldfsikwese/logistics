import 'package:flutter/material.dart';
import 'package:logistics/navigation/routes.dart';
import 'package:logistics/theme/application_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sample Logistics',
      theme: appTheme,
      // page navigation with routing
      routes: applicationRoutes,
      initialRoute: 'mainPage',
    );
  }
}