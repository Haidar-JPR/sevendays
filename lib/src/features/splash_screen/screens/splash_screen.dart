import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF13131E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // NOTE: Swords Images
            Image.asset(
              'assets/images/swords.png',
              width: 140,
            ),

            // NOTE: Header
            Text(
              'venture'.toUpperCase(),
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 32,
                color: Colors.white,
                letterSpacing: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
