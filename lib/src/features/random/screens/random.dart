import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RandomS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // NOTE: Widget Food Order Item
    Widget foodItems({
      String? image,
      String? name,
      String? subText,
      String? total,
      String? price,
    }) {
      return SizedBox(
        width: 315,
        height: 140,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/$image.png',
                  width: 80,
                ),
                const SizedBox(width: 11),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name!,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      subText!,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w200,
                        color: const Color(0XFFA3A8B8),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/dec.png',
                          width: 22,
                        ),
                      ),
                      Text(
                        total!,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/add.png',
                          width: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  price!,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    // NOTE: Widget Total Price Detail
    Widget totalPrice() {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informations',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub Total',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),
                ),
                Text(
                  '\$600.00',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),
                ),
                Text(
                  '\$80.00',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),
                ),
                Text(
                  '\$680.00',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 36,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // NOTE: Header
                Text(
                  'My Shopping Cart',
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 30),

                // NOTE: Burger Item
                foodItems(
                  image: 'burger',
                  name: 'Burger Malleta',
                  subText: 'McTheone',
                  total: '2',
                  price: '\$90.00',
                ),
                const SizedBox(height: 26),

                // NOTE: Mojito Item
                foodItems(
                  image: 'mojito',
                  name: 'Mojito Orange',
                  subText: 'The Bar',
                  total: '5',
                  price: '\$510.00',
                ),
                const SizedBox(height: 26),

                // NOTE: Total Price Order
                totalPrice(),
                const SizedBox(height: 60),

                // NOTE: Checkout Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFFFFC532),
                    minimumSize: const Size(double.infinity, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(53),
                    ),
                    shadowColor: const Color(0XFFFFC532),
                    elevation: 10,
                  ),
                  child: Text(
                    'Checkout Now',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // NOTE: Save Wishlist Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFFD9D9D9),
                    minimumSize: const Size(double.infinity, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(53),
                    ),
                  ),
                  child: Text(
                    'Save to Wishlist',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
