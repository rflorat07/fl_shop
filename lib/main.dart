import 'package:flutter/material.dart';

import 'package:fl_shop/routes.dart';
import 'package:fl_shop/theme.dart';

import 'package:fl_shop/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      //home: const SplashScreen(),
      routes: routes,
      initialRoute: SplashScreen.routeName,
    );
  }
}
