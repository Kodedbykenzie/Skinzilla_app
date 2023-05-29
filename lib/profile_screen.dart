import 'package:flutter/material.dart';
import 'package:skinzilla_app/extentions.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: '#9A7B4F'.toColor(),
          title: Text("Profile"),
        ),
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Complete Your Profile",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                CircleAvatar(
                  // TODO: Set the user's profile image
                  radius: 64.0,
                ),
                SizedBox(height: 16.0),
                Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                // TODO: Add a TextFormField for the user's name input
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                // TODO: Add a TextFormField for the user's email input
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle button click
                  },
                  child: Text("Submit"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF9A7B4F), // Use hex code for button color
                  ),
                ),
                // Use hex code for button color
              ],
            )
        )
    );
  }

}
