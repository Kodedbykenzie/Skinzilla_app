import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'skin_type_quiz_screen.dart';
import 'routine_setup_screen.dart';
import 'product_recommendations_screen.dart';




class HomeScreen extends StatelessWidget {
  // Helper method to build onboarding checklist items
  Widget _buildOnboardingChecklistItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xFF9A7B4F),
        title: Text("Home"),
    actions: [
    IconButton(
    icon: Icon(Icons.notifications),
    onPressed: () {
    // Handle notifications icon click
    },
    ),
    IconButton(
    icon: Icon(Icons.settings),
    onPressed: () {
    // Handle settings icon click
    },
    ),
    ],
    ),
    body: Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    CircleAvatar(
    // Add user's profile avatar image
    radius: 48,
    ),
    SizedBox(height: 16),
    Text(
    "Welcome", // Add user's name
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 8),
    Text(
    "18th April,2023", // Add today's date
    style: TextStyle(fontSize: 18),
    ),
    SizedBox(height: 32),
    Text(
    "Onboarding Checklist", // Add onboarding checklist
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 16),
    _buildOnboardingChecklistItem(
    icon: Icons.check_circle_outline,
    title: "Complete Profile Setup",
    onTap: () {
    Navigator.pushNamed(context, '/profile'); // Navigate to profile setup page
    },
    ),
    SizedBox(height: 16),
    _buildOnboardingChecklistItem(
    icon: Icons.check_circle_outline,
    title: "Take Skin Type Quiz",
    onTap: () {
    Navigator.pushNamed(context, '/skin'); // Navigate to skin type quiz page
    },
    ),
      SizedBox(height: 16),
      _buildOnboardingChecklistItem(
        icon: Icons.check_circle_outline,
        title: "Recommended products",
        onTap: () {
          Navigator.pushNamed(context, '/product'); // Navigate to skin type quiz page
        },
      ),
    SizedBox(height: 16),
    _buildOnboardingChecklistItem(
    icon: Icons.check_circle_outline,
    title: "Set Up Routine",
    onTap: () {
    Navigator.pushNamed(context, '/routine'); // Navigate to routine setup page
    },
    ),
    ],
    ),
    ),
    bottomNavigationBar: BottomNavigationBar(
    currentIndex: 0, // Set the current selected index to 0
    items: [
    BottomNavigationBarItem(
      backgroundColor:Color(0xFF9A7B4F),
      icon: Icon(Icons.home),
    label: 'Home',
    ),
    BottomNavigationBarItem(
      backgroundColor:Color(0xFF9A7B4F),
      icon: Icon(Icons.shopping_cart),
    label: 'Products',
    ),
    BottomNavigationBarItem(
      backgroundColor:Color(0xFF9A7B4F),
      icon: Icon(Icons.schedule),
    label: 'Routines',
    ),
    BottomNavigationBarItem(
      backgroundColor:Color(0xFF9A7B4F),
      icon: Icon(Icons.insights),
    label: 'Insights',
    ),
    ],
    onTap: (index) {
    // Handle bottom navigation icon clicks
    switch (index) {
    case 0:
    // Do nothing as this is the current page
    break;
    case 1:
        Navigator.pushNamed(context, '/products'); // Navigate to products page
    break;
      case 2:
        Navigator.pushNamed(context, '/routines'); // Navigate to routines page
        break;
      case 3:
        Navigator.pushNamed(context, '/insights'); // Navigate to insights page
        break;
    }
    },
    ),
    );
  }
}






