import 'package:flutter/material.dart';
import 'package:nykaa_app/utils/constants/color_constants.dart';

class OfferlistScreen extends StatelessWidget {
  String image;
  String text;
  String subtext;
  OfferlistScreen({
    super.key,
    required this.image,
    required this.text,
    required this.subtext,
  });

  // String image;
  // String text;
  // String subtext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 155,
              width: 155,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(image))),
            ),
            Text(text,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.mainblack)),
            Text(subtext, style: TextStyle(fontWeight: FontWeight.normal)),
          ],
        ),
      ),
    );
  }
}
