import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_clone/Chatpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(18, 140, 126, 1),
          title: Row(
            children: [
              Text(
                "WhatsApp",
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
              Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
              Container(width: 35),
              Icon(Icons.search, color: Colors.white),
              Container(width: 30),
              Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              Container(width: 10),
            ],
          )),
      body: Column(
        children: [
          Container(
            height: 50,
            color: const Color.fromRGBO(18, 140, 126, 1),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Chats",
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    "Updates",
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    "Calls",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Chat_Pagee()));
                    },
                    child: Row(
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
                        Text("Name of the person"),
                        Spacer(),
                        Text("LastMSG",style: TextStyle(fontSize: 10),)
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
