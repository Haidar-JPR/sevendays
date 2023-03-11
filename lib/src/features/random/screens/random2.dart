import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/main.dart';

class RandomS2 extends StatefulWidget {
  @override
  State<RandomS2> createState() => _RandomS2State();
}

class _RandomS2State extends State<RandomS2> {
  int selectedIndex = -1;

  Widget bookingPlan({
    int? index,
    String? day,
    String? date,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index!;
        });
      },
      child: Stack(
        children: [
          Container(
            width: 80,
            height: 100,
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: const Color(0XFFFFFFFF),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: selectedIndex == index
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              children: [
                selectedIndex == index
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 27,
                          height: 25,
                          decoration: const BoxDecoration(
                            color: Color(0XFF3F6DF6),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      )
                    : const SizedBox(),
                const SizedBox(height: 6),
                Text(
                  day!,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  date!,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color(0XFFA8ACB6),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/maldives.png',
              width: 436,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              'Arrina La',
              style: GoogleFonts.poppins(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Bali, Dekat Bandung',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
            const SizedBox(height: 26),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Pantai Pandawa adalah salah satu para kawasan wisata di area Kuta selatan sana Kabupaten Dekat Bandung, Bali.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w200,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 26),
                  Text(
                    'Booking Now',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 6),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        bookingPlan(
                          index: 0,
                          day: 'THU',
                          date: '19 JAN',
                        ),
                        bookingPlan(
                          index: 1,
                          day: 'FRI',
                          date: '20 JAN',
                        ),
                        bookingPlan(
                          index: 2,
                          day: 'SAT',
                          date: '21 JAN',
                        ),
                        bookingPlan(
                          index: 3,
                          day: 'SUN',
                          date: '22 JAN',
                        ),
                        bookingPlan(
                          index: 4,
                          day: 'MON',
                          date: '23 JAN',
                        ),
                        bookingPlan(
                          index: 5,
                          day: 'TSU',
                          date: '24 JAN',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '\$22,800',
                            style: GoogleFonts.poppins(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: const Color(0XFF3F6DF6),
                            ),
                          ),
                          Text(
                            '/night',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 17),
                            backgroundColor: const Color(0XFF3F6DF6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19),
                            ),
                          ),
                          child: Text(
                            'Continue',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
