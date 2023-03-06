import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF181A20),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 70,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              // NOTE: Coin Images
              Image.asset(
                'assets/images/icon-coin.png',
                width: 50,
              ),
              const SizedBox(height: 30),

              // NOTE: Header
              Text(
                'Welcome back. \nLet’s make money.',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 50),

              // NOTE: TextFormField Email
              TextFormField(
                style: GoogleFonts.openSans(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  filled: true,
                  fillColor: const Color(0XFF262A34),
                  hintText: 'haidar.dod@gmail.com',
                  hintStyle: GoogleFonts.openSans(color: Colors.grey[700]),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),

              // NOTE: TextFormField Password
              TextFormField(
                style: GoogleFonts.openSans(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  filled: true,
                  fillColor: const Color(0XFF262A34),
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
                obscureText: true,
              ),

              // NOTE: Button Forgot Password
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot My Password',
                    style: GoogleFonts.poppins(
                      color: Colors.grey[600],
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),

              // NOTE: Button Sign In
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  minimumSize: const Size(
                    double.infinity,
                    50,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  backgroundColor: const Color(0XFFFCAC15),
                ),
                child: Text(
                  'Sign In',
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // NOTE: Button Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\’t have account?',
                    style: GoogleFonts.poppins(
                      color: Colors.grey[600],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
