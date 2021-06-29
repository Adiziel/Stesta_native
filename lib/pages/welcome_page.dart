import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stesta_native/utils/routes.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                // Add one stop for each color
                // Values should increase from 0.0 to 1.0
                stops: [
                  0.1,
                  0.5,
                ],
                colors: [
                  Colors.teal.shade700,
                  Colors.black,
                ]),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 100.0,
                    width: 150.0,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Stesta",
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "A free, opensource task management and progress tracking app.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: GoogleFonts.poppins().fontFamily,

                      // decoration: TextDecoration()
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, MyRoutes.loginRoute),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 3.0,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
