import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmtyState2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF1B1B33),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // NOTE: Image Assets
          Image.asset(
            'assets/images/chart.png',
            width: double.infinity,
            height: 354,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 68),

          // NOTE: Header
          Text(
            'Boost Profit!',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),

          // NOTE: Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Our tools are helping business to grow much faster',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 60),

          // NOTE: Rocket Button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0XFF808EE0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              minimumSize: const Size(70, 70),
            ),
            child: Image.asset(
              'assets/images/rocket.png',
              width: 40,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
