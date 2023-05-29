import 'package:flutter/material.dart';
import 'package:skinzilla_app/extentions.dart';
import 'package:skinzilla_app/login_screen.dart';
import 'package:skinzilla_app/signup_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final List<String> titles = [
    "Welcome to MySkin",
    "Scan",
    "Daily Reminders",
    "Product Recommendations"
  ];

  final List<String> subtitles = [
    "Get ready to experience the best skin of your life.",
    "Using our Al integrated software, you can scan your skin to know exactly what could need care and get options on how to achieve this.",
    "Set reminders that reminds you of your daily routines so as not to miss out on glowing daily whenever you step out.",
    "Get recommendations to top-notch tested and trusted products curated to your particular skin type for ultimal results."
  ];

  final List<String> images = [
    "asset/welcome.jpg",
    "asset/scan.jpg",
    "asset/daily.jpg",
    "asset/recom.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: titles.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        images[index],
                        height: 250,
                      ),
                      SizedBox(height: 50),
                      Text(
                        titles[index],
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          subtitles[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Navigate to the Signup page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),);
                    },
                    child: Text("Get Started"),
                    style: ElevatedButton.styleFrom(
                      padding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      primary: '#9A7B4F'.toColor(),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // TODO: Navigate to the login screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "Already have an account? Log in",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
