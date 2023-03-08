import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rating2 extends StatefulWidget {
  @override
  State<Rating2> createState() => _Rating2State();
}

class _Rating2State extends State<Rating2> {
  // NOTE: Variable
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    // NOTE: Widget Button Rating Star
    Widget ratingStar(
      int index,
    ) {
      return IconButton(
        onPressed: () {
          setState(() {
            selectedIndex = index;
          });
        },
        icon: Icon(
          Icons.star,
          color: selectedIndex >= index ? Colors.amber : Colors.white,
          size: 50,
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40,
            right: 40,
            top: 80,
          ),
          child: Column(
            children: [
              // NOTE: Image
              Image.asset(
                'assets/images/home-office.png',
                width: 294,
                height: 210,
              ),
              const SizedBox(height: 50),

              // NOTE: Header
              Text(
                'Enjoy Your Meal',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),

              // NOTE: Text
              Text(
                'Please rate our experience',
                style: GoogleFonts.poppins(
                  color: const Color(0XFF808EAB),
                ),
              ),
              const SizedBox(height: 50),

              // NOTE: Rating Star
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ratingStar(0),
                  ratingStar(1),
                  ratingStar(2),
                  ratingStar(3),
                  ratingStar(4),
                ],
              ),
              const SizedBox(height: 50),

              // NOTE: TextFormField Message
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: 'Your message',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color(0XFF808EAB),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none,
                  ),
                ),
                maxLines: 5,
              ),
              const SizedBox(height: 30),

              // NOTE: Submit Review Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF4074E6),
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                child: Text(
                  'Submit Review',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
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
