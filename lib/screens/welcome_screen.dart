import 'package:flutter/material.dart';
import 'package:travel_app_ui/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              //image intro
              Center(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(150),
                    topRight: Radius.circular(150),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/images/welcome_screen_image.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              //intro text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //first text and icon
                    Row(
                      children: [
                        const Text(
                          "Explore",
                          style: TextStyle(
                            fontFamily: 'Gerbil',
                            fontSize: 48,
                            fontWeight: FontWeight.w500,
                          ),
                          //image goes here
                        ),
                        const SizedBox(
                          width: 19,
                        ),
                        Image.asset(
                          "assets/images/brown_star.png",
                          height: 48,
                          width: 48,
                        ),
                      ],
                    ),
                    //second text goes here
                    const SizedBox(height: 10),
                    const Text(
                      "Book And",
                      style: TextStyle(
                        fontFamily: 'Gerbil',
                        fontSize: 48,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    //third text and icon
                    Row(
                      children: [
                        const Text(
                          "Wander",
                          style: TextStyle(
                            fontFamily: 'Gerbil',
                            fontSize: 48,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF989560),
                          ),
                          //image goes here
                        ),
                        const SizedBox(
                          width: 19,
                        ),
                        Image.asset(
                          "assets/images/black_star.png",
                          height: 48,
                          width: 48,
                        ),
                      ],
                    ),
                    //fourth and final text
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Text(
                          "With",
                          style: TextStyle(
                            fontFamily: 'Gerbil',
                            fontSize: 48,
                            fontWeight: FontWeight.w500,
                          ),
                          //image goes here
                        ),
                        SizedBox(
                          width: 19,
                        ),
                        Text(
                          "Ease",
                          style: TextStyle(
                            fontFamily: 'Gerbil',
                            fontSize: 48,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF989560),
                          ),
                          //image goes here
                        ),
                      ],
                    ),
                  ],
                ),
                //button start
              ),
              //button
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 12.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF000000),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "START YOUR JOURNEY",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
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
