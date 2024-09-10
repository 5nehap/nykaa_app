import 'package:flutter/material.dart';
import 'package:nykaa_app/utils/constants/color_constants.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 120,
          //surfaceTintColor: colors.white,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          
          leading: Container(
            
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "data:image/png;base64,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"))),
          ),
          // title: Text(
          //   "NYKAA",
          //   style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: ColorConstants.primarycolor),
          // ),
          actions: const [
            Icon(Icons.notifications_active_outlined),
            SizedBox(width: 20),
            Icon(Icons.favorite_border_outlined),
            SizedBox(width: 20),
            Icon(Icons.shopping_cart_outlined),
            SizedBox(width: 20),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
              SizedBox(
                height: 75, // Adjusted height to fit containers
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(12, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        height: 55,
                        width: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/4612149/pexels-photo-4612149.jpeg?auto=compress&cs=tinysrgb&w=600",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "every day",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        width: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images-static.nykaa.com/uploads/413dcf33-c27b-4a26-ab2d-dc8a5264e951.jpg?tr=cm-pad_resize,w-600",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        width: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images-static.nykaa.com/creatives/285f1493-3c94-4214-80d9-1935502de56f/default.jpg?tr=cm-pad_resize,w-600",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "every day",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        width: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images-static.nykaa.com/uploads/cebbb8ff-0878-445e-b946-cdce86be1f2c.JPG?tr=cm-pad_resize,w-600",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        width: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images-static.nykaa.com/creatives/3223ad88-803f-4fcd-bb87-957da7b65827/default.jpg?tr=cm-pad_resize,w-600",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "viral sensation\n up to 20% off",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "GLO-MG Value",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "New! Halo Glow Beauty Wands",
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://images-static.nykaa.com/uploads/d7fb35f3-3e47-46d4-9ec2-f40765de11d4.jpg?tr=cm-pad_resize,w-1200",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Up to 20% off",
                  style: const TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              thirdsection(),
            ],
          ),
        ));
  }

  Column thirdsection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://images-static.nykaa.com/uploads/0f0944cb-8885-4bc0-904c-f14242e61336.jpg?tr=cm-pad_resize,w-1200",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "Up to 20% off",
              style: const TextStyle(
                  color: ColorConstants.mainblack,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainblack,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images-static.nykaa.com/uploads/1f95520f-a173-4ec2-8798-afddc50b1504.jpg?tr=cm-pad_resize,w-300"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainblack,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images-static.nykaa.com/uploads/511f455c-7d4c-4815-9b54-535bddd9efae.jpg?tr=cm-pad_resize,w-300"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainblack,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images-static.nykaa.com/uploads/3727d6ef-39de-479d-859d-902f01436e2d.jpg?tr=cm-pad_resize,w-300"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainblack,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images-static.nykaa.com/uploads/c634953f-1c26-461b-85e4-e27611ddbcbb.jpg?tr=cm-pad_resize,w-300"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
