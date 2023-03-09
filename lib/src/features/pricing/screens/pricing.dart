import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pricing extends StatefulWidget {
  @override
  State<Pricing> createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  // NOTE: Variable
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    // NOTE: Widget Select Item
    Widget upgradeItem({
      int? index,
      String? imgUrl,
      String? nameUpgrade,
      String? subText,
      String? text,
    }) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index!;
          });
        },
        child: Container(
          width: double.infinity,
          height: 100,
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 16,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedIndex == index
                  ? const Color(0XFF6050E7)
                  : const Color(0XFFA3A8B8),
            ),
            borderRadius: BorderRadius.circular(45),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // NOTE: Image item
              Image.asset(
                'assets/images/$imgUrl.png',
                width: 65,
              ),
              const SizedBox(width: 7),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // NOTE: Header
                  Text(
                    nameUpgrade!,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  // NOTE: Sub Text
                  Row(
                    children: [
                      Text(
                        subText!,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: const Color(0XFFA3A8B8),
                        ),
                      ),
                      const SizedBox(width: 7),
                      Text(
                        text!,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0XFF5343C2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),

              // NOTE: Check Icon
              selectedIndex == index
                  ? Image.asset(
                      'assets/images/check.png',
                      width: 26,
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 80,
              ),
              child: Column(
                children: [
                  // NOTE: Crown Image
                  Image.asset(
                    'assets/images/crown.png',
                    width: 100,
                  ),
                  const SizedBox(height: 30),

                  // NOTE: Main Header
                  Text(
                    'Which one you wish \nto Upgrade?',
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),

                  // NOTE: Pig Item
                  upgradeItem(
                    index: 0,
                    imgUrl: 'pig',
                    nameUpgrade: 'Money Security',
                    subText: 'support',
                    text: '24/7',
                  ),
                  const SizedBox(height: 24),

                  // NOTE: Bill Item
                  upgradeItem(
                    index: 1,
                    imgUrl: 'bill',
                    nameUpgrade: 'Automation',
                    subText: 'we provide',
                    text: 'invoice',
                  ),
                  const SizedBox(height: 24),

                  // NOTE: Coin Item
                  upgradeItem(
                    index: 2,
                    imgUrl: 'coin',
                    nameUpgrade: 'Balance Report',
                    subText: 'can up to',
                    text: '10k',
                  ),
                ],
              ),
            ),

            // NOTE: Upgrade Button
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 77,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 21,
                  ),
                  color: const Color(0XFF6050E7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upgrade Now',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 24,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
