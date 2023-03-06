import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        // NOTE: Background Images
        Image.asset(
          'assets/images/get-started-bg.png',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 400,
            left: 30,
            right: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // NOTE: Header
              Text(
                'Maximize Revenue',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),

              // NOTE: Text
              Text(
                'Gain more profit from cryptocurrency \nwithout any risk involved',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              // NOTE: Button
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple.shade200,
                    fixedSize: const Size(70, 70),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Icon(
                      Icons.login_rounded,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
