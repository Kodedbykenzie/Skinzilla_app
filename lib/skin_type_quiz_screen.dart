import 'dart:math';
import 'package:flutter/material.dart';
import 'package:skinzilla_app/extentions.dart';

class SkinTypeQuizScreen extends StatefulWidget {
  @override
  _SkinTypeQuizScreenState createState() => _SkinTypeQuizScreenState();
}

class _SkinTypeQuizScreenState extends State<SkinTypeQuizScreen> {
  // Define the questions and their corresponding options
  final List<String> questions = [
    "How often does your skin feel dry or tight?",
    "How often do you experience oiliness or shine on your skin?",
    "Do you have visible pores on your skin?",
    "How often do you experience breakouts or acne?",
    "How often do you experience redness or sensitivity on your skin?",
    // Add more questions as needed
  ];

  // Define the available options for each question
  final List<List<String>> options = [
    ["Never", "Occasionally", "Frequently", "Always"],
    ["Never", "Occasionally", "Frequently", "Always"],
    ["No", "Small pores", "Moderate pores", "Large pores"],
    ["Never", "Occasionally", "Frequently", "Always"],
    ["Never", "Occasionally", "Frequently", "Always"],
    // Add more options as needed
  ];

  // Define the selected option for each question
  List<String> selectedOptions = List.generate(5, (index) =>"null");

  void _onOptionSelected(int questionIndex, String option) {
    setState(() {
      selectedOptions[questionIndex] = option;
    });
  }

  void _onSubmit() {
    // Determine the skin type based on the selected options
    // You can use the selectedOptions list to determine the skin type
    // based on the user's responses to the quiz questions.
    // For example, you can calculate a score based on the selected
    // options and use that score to determine the skin type.
    // Once the skin type is determined, you can show a dialog or
    // navigate to a new screen to display the result to the user.
    String skinType = _calculateSkinType();
    _showResultDialog(skinType);
  }

  String _calculateSkinType() {
    // TODO: Calculate the skin type based on the selected options
    // You can use the selectedOptions list to determine the skin type
    // based on the user's responses to the quiz questions.
    // For example, you can calculate a score based on the selected
    // options and use that score to determine the skin type.
    // You can return the skin type as a string.
    // For now, we'll just return a random skin type.
    return ["Dry", "Oily", "Combination", "Sensitive"][Random().nextInt(4)];
  }

  void _showResultDialog(String skinType) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Your Skin Type"),
          content: Text("Your skin type is $skinType."),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
        ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: '#9A7B4F'.toColor(),
          title: Text("Skin Type Quiz"),
        ),
        body: Padding(
        padding: EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    Text(
    "Skin Type Quiz",
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
      SizedBox(height: 16),
      Expanded(
        child: ListView.builder(
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "${index + 1}. ${questions[index]}",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: options[index]
                      .map((option) => ChoiceChip(
                    label: Text(option),
                    selected: selectedOptions[index] == option,
                    onSelected: (selected) {
                      _onOptionSelected(index, option);
                    },
                  ))
                      .toList(),
                ),
                SizedBox(height: 16),
              ],
            );
          },
        ),
      ),
      ElevatedButton(
        onPressed: _onSubmit,
        child: Text("Submit"),
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF9A7B4F), // Use hex code for button color
        ),
      ),
    ],
    ),
        ),
    );
  }
}
