import 'package:flutter/material.dart';

import 'src/features/splash_screen/screens/splash_screen.dart';
import 'src/features/splash_screen/screens/splash_screen2.dart';
import 'src/features/get_started/screens/get_started.dart';
import 'src/features/get_started/screens/get_started2.dart';
import 'src/features/sign_in/screens/sign_in.dart';
import 'src/features/sign_in/screens/sign_in2.dart';
import 'src/features/emty_state/screens/emty_state.dart';
import 'src/features/emty_state/screens/emty_state2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EmtyState2(),
    );
  }
}
