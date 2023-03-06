import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // NOTE: Header
              Text(
                'Health First.',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16),

              // NOTE: Text
              Text(
                'Exercise together with our best \ncommunity fit in the world',
                style: GoogleFonts.poppins(),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 25),

              // NOTE: Gallery Images
              Image.asset(
                'assets/images/gallery.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 25),

              // NOTE: Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 55),
                  backgroundColor: Color(0XFFAFEA0D),
                ),
                child: Text(
                  'Shape My Body',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // NOTE: Terms & Conditions
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Terms & Conditions',
                    style: GoogleFonts.lato(
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
