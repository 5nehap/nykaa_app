import 'package:flutter/material.dart';
import 'package:nykaa_app/dummy_db.dart';
import 'package:nykaa_app/utils/constants/color_constants.dart';
import 'package:nykaa_app/view/offers_screen/offerlist_screen.dart';

class OffersScreen extends StatelessWidget {
  OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Offers",
          style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: ColorConstants.primarycolor),
        ),
        actions: const [
          Icon(Icons.favorite_border_outlined),
          SizedBox(width: 30),
          Icon(Icons.shopping_cart_outlined),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: ColorConstants.primarycolor,
                ),
                hintText: "search all products",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const Divider(thickness: 0.5),
          Container(
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images-static.nykaa.com/uploads/d2a744d2-a722-4149-91b6-49dae9b91f0c.gif"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Top-To-Toe Treats",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          SizedBox(
            height: 255,
            width: 255,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => OfferlistScreen(
                      image: DummyDb.offerlist[index]["image"],
                      text: DummyDb.offerlist[index]["text"],
                      subtext: DummyDb.offerlist[index]["subtext"],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 16,
                    ),
                itemCount: DummyDb.offerlist.length),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Deal of the Day!",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.mainblack),
            ),
          ),
          Container(
            height: 250,
            width: 150,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://images-static.nykaa.com/uploads/9edc2177-cddd-4663-abb4-51436bcd6f8c.gif"))),
          )
        ]),
      ),
    );
  }
}
