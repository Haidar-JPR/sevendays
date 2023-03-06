import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 60,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // NOTE: Header Image
              Image.asset(
                'assets/images/bill.png',
                width: 245,
                height: 279,
              ),
              const SizedBox(height: 20),

              // NOTE: TextFormField Email
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email Address',
                    style: GoogleFonts.openSans(),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    style: GoogleFonts.openSans(color: Colors.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(71),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      filled: true,
                      fillColor: const Color(0XFFF3F3F3),
                      hintText: 'haidar.dod@gmail.com',
                      hintStyle: GoogleFonts.openSans(color: Colors.grey[700]),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // NOTE: TextFormField Password
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: GoogleFonts.openSans(),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    style: GoogleFonts.openSans(color: Colors.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(71),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      filled: true,
                      fillColor: const Color(0XFFF3F3F3),
                      hintText: 'password',
                      hintStyle: GoogleFonts.openSans(color: Colors.grey[700]),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                    obscuringCharacter: '*',
                    obscureText: true,
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // NOTE: Button Login
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(71),
                  ),
                  minimumSize: const Size(
                    double.infinity,
                    50,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  backgroundColor: const Color(0XFF5468FF),
                ),
                child: Text(
                  'Log In',
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // NOTE: Button Create New Account
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(71),
                    side: const BorderSide(color: Colors.grey),
                  ),
                  shadowColor: Colors.transparent,
                  minimumSize: const Size(
                    double.infinity,
                    50,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  backgroundColor: Colors.white,
                ),
                child: Text(
                  'Create New Account',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[500],
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
