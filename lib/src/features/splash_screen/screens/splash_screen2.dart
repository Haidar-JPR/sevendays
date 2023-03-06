import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // NOTE: Background Images
          Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
          ),

          // NOTE: Header
          Padding(
            padding: const EdgeInsets.only(bottom: 530),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/web-home.png',
                  width: 51,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Text(
                  'HouseQu',
                  style: GoogleFonts.montserrat(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
