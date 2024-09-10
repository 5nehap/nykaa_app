import 'package:flutter/material.dart';
import 'package:nykaa_app/utils/constants/color_constants.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NYKAAPLAY",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: ColorConstants.primarycolor),
        ),
        actions: const [
          Icon(Icons.notifications_active_outlined),
          SizedBox(width: 30),
          Icon(Icons.bookmark_outline),
          SizedBox(width: 30),
          Icon(Icons.shopping_cart_outlined),
          SizedBox(width: 30),
        ],
      ),
      body: Column(
        
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://images-static.nykaa.com/uploads/59b10271-5d33-4e4f-9546-77d2808e465c.png?tr=cm-pad_resize,w-300"),
                  radius: 30,
                ),
                
                
              ),
              Text("pop drop"),
              SizedBox(width: 10,),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://images-static.nykaa.com/uploads/59b10271-5d33-4e4f-9546-77d2808e465c.png?tr=cm-pad_resize,w-300"),
                  radius: 30,
                ),
                
              ),
              SizedBox(width: 10,),
              

            ],
          ),
        ],
      ),
    );
  }
}