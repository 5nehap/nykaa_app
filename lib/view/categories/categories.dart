import 'package:flutter/material.dart';
import 'package:nykaa_app/utils/constants/color_constants.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shop",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: ColorConstants.primarycolor),
        ),
        actions: const [
          Icon(Icons.favorite_border_outlined),
          SizedBox(width: 30),
          Icon(Icons.shopping_cart_outlined),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}