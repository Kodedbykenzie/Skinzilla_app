import 'package:flutter/material.dart';
import 'package:skinzilla_app/extentions.dart';

class ProductRecommendationsScreen extends StatelessWidget {
  final String skinType;

  ProductRecommendationsScreen({required this.skinType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: '#9A7B4F'.toColor(),
        title: Text("Product Recommendations"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Recommended Products for $skinType Skin",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              "Cleanser: XYZ Cleanser",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              "Toner: XYZ Toner",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              "Serum: XYZ Serum",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              "Moisturizer: XYZ Moisturizer",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              "Sunscreen: XYZ Sunscreen",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
