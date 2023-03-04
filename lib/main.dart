import 'package:flutter/material.dart';
import 'package:sevendays/src/features/splash_screen/screens/splash_screen2.dart';

// import 'src/features/splash_screen/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen2(),
    );
  }
}
