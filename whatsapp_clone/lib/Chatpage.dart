import 'package:flutter/material.dart';

class Chat_Pagee extends StatefulWidget {
  const Chat_Pagee({super.key});

  @override
  State<Chat_Pagee> createState() => _Chat_PageeState();
}

class _Chat_PageeState extends State<Chat_Pagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(18, 140, 126, 1),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.white)),
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 20, // Adjust the radius as needed
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-photo/indoor-studio-shot-attractive-beautiful-pretty-young-woman-wearing-eyeglasses-yellow-sweatshirt-having-long-fair-hair-posing-isolated-pink-wall-people-emotions-concept_176532-6755.jpg"),
              ),
              iconSize: 30, // Adjust the iconSize as needed
            ),
            SizedBox(
              width: 1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PersonName",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Last seen Time",
                  style: TextStyle(color: Colors.white, fontSize: 8),
                )
              ],
            ),
            Spacer(),
            Icon(Icons.video_call_sharp, color: Colors.white),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.call, color: Colors.white),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_vert, color: Colors.white),
            SizedBox(
              width: 20,
            )
          ],
        ),
        titleSpacing: -10,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://user-images.githubusercontent.com/15075759/28719144-86dc0f70-73b1-11e7-911d-60d70fcded21.png'), // Replace with your background image URL
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
