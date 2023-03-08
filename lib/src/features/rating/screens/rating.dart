import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rating extends StatefulWidget {
  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  // NOTE: Variable
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    // NOTE: Button emoji
    Widget buttonEmoji(
      int index,
      String image,
    ) {
      return ElevatedButton(
        onPressed: () {
          setState(() {
            selectedIndex = index;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: selectedIndex == index
              ? const Color(0XFFEEF0FF)
              : const Color(0XFF37394D),
          minimumSize: const Size(60, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
        child: Image.asset(
          'assets/images/$image.png',
          width: 28,
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0XFF181925),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 37,
          right: 37,
          top: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // NOTE: Pizza Image
            Image.asset(
              'assets/images/pizza.png',
              width: 200,
            ),
            const SizedBox(height: 20),

            // NOTE: Header
            Text(
              'Pizza Ballado',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),

            // NOTE: Price
            const SizedBox(height: 4),
            Text(
              '\$90,00',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 90),

            // NOTE: Text
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Was it delicious?',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // NOTE: Multi button emoji
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonEmoji(0, 'mad'),
                buttonEmoji(1, 'sad'),
                buttonEmoji(2, 'cheers'),
                buttonEmoji(3, 'loves'),
              ],
            ),
            const SizedBox(height: 40),

            // NOTE: Rate button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFF34D186),
                minimumSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
              child: Text(
                'Rate Now',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
