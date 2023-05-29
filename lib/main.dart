import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'onboarding_screen.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'skin_type_quiz_screen.dart';
import 'routine_setup_screen.dart';
import 'product_recommendations_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  get skinType => "Combined";




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skin App',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
        '/skin': (context) => SkinTypeQuizScreen(),
        '/routine' : (context) => RoutineSetupScreen(),
        '/product' : (context) => ProductRecommendationsScreen(skinType: skinType),
    // Add other screens here
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
