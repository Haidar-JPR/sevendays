import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pricing2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // NOTE: Widget Pro features
    Widget proFeature({
      String? text,
    }) {
      return Row(
        children: [
          Image.asset(
            'assets/images/check-orange.png',
            width: 26,
          ),
          const SizedBox(width: 12),
          Text(
            text!,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          // NOTE: Color Gradient
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0XFF0B073E),
                  Color(0XFF602880),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 80,
                left: 28,
                right: 28,
                bottom: 20,
              ),
              child: Center(
                child: Column(
                  children: [
                    // NOTE: Pro features Images
                    Image.asset(
                      'assets/images/pro-ver.png',
                      width: 164,
                    ),
                    const SizedBox(height: 67),

                    // NOTE: Header
                    Text(
                      'Pro Features',
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),

                    // NOTE: Text
                    Text(
                      'Unlock the winner modules \nand get more insights',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color(0XFF7F7FAD),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 50),

                    // NOTE: Features
                    proFeature(
                      text: 'Unlock Our Top Charts',
                    ),
                    const SizedBox(height: 27),
                    proFeature(
                      text: 'Save More than 1,000 Docs',
                    ),
                    const SizedBox(height: 27),
                    proFeature(
                      text: '24/7 Customer Support',
                    ),
                    const SizedBox(height: 27),
                    proFeature(
                      text: 'Track Company’s Spending',
                    ),
                    const SizedBox(height: 59),

                    // NOTE: Subscribe Button
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 55),
                        backgroundColor: const Color(0XFFE57C73),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31),
                        ),
                        shadowColor: const Color(0XFFE57C73),
                        elevation: 30,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Text(
                            'Subscribe Now',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              'assets/images/btn-arrow.png',
                              width: 41,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),

                    // NOTE: Contact Support
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Contact Support',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
