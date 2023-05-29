import 'package:flutter/material.dart';
import 'package:skinzilla_app/extentions.dart';

class RoutineSetupScreen extends StatefulWidget {
  @override
  _RoutineSetupScreenState createState() => _RoutineSetupScreenState();
}

class _RoutineSetupScreenState extends State<RoutineSetupScreen> {
  List<String> selectedProducts = [];
  List<String> availableProducts = [
    "Cleanser",
    "Toner",
    "Serum",
    "Moisturizer",
    "Sunscreen",
  ];

  void _onProductSelected(String product, bool selected) {
    setState(() {
      if (selected) {
        selectedProducts.add(product);
      } else {
        selectedProducts.remove(product);
      }
    });
  }

  void _onSubmit() {
    // Perform routine setup based on selected products
    // For example, you can store the selected products in a database
    // or perform any other business logic here.
    print("Selected products: $selectedProducts");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: '#9A7B4F'.toColor(),
        title: Text("Routine Setup"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Select Products for Your Routine",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: availableProducts.length,
                itemBuilder: (context, index) {
                  String product = availableProducts[index];
                  return CheckboxListTile(
                    title: Text(product),
                    value: selectedProducts.contains(product),
                    onChanged: (selected) {
                      _onProductSelected(product, selected!);
                    },
                  );
                },
              ),
            ),
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
