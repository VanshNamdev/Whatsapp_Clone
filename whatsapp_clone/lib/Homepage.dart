import 'package:flutter/cupertino.dart';
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
          backgroundColor: Color.fromARGB(240, 18, 140, 99),
          title: Padding(
            padding: const EdgeInsets.only(top:4,bottom: 5),
            child: Row(
              children: [
                Text(
                  "WhatsApp",
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                  size: 22
                ),
                Container(width: 22),
                Icon(Icons.search, color: Colors.white,size: 25,),
                Container(width: 20),
                Icon(
                  Icons.more_vert,size: 20,
                  color: Colors.white,
                ),            ],
            ),
          )),
      body: Column(
        children: [
          Container(
            height: 50,
            color: Color.fromARGB(240, 18, 140, 99),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(Icons.groups_3_rounded,color: Colors.white,size: 25,),
                  Container(
                    width: 34,
                  ),
                  Text(
                    "Chats",
                    style: TextStyle(color: Colors.white,fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "Updates",
                    style: TextStyle(color: Colors.white,fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "Calls",
                    style: TextStyle(color: Colors.white,fontSize: 16),
                  ),
                  SizedBox(
                    width: 40,
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
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisSize:MainAxisSize.max,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: CircleAvatar(
                              radius: 25, // Adjust the radius as needed
                              backgroundImage: NetworkImage(
                                  "https://img.freepik.com/free-photo/indoor-studio-shot-attractive-beautiful-pretty-young-woman-wearing-eyeglasses-yellow-sweatshirt-having-long-fair-hair-posing-isolated-pink-wall-people-emotions-concept_176532-6755.jpg"),
                            ),
                            iconSize: 100, // Adjust the iconSize as needed
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Contact $index",style: TextStyle(fontSize: 18),),
                              Text("Message",style: TextStyle(fontSize: 12),)
                            ],
                          ),
                          Spacer(),
                          Text("LastMSG",style: TextStyle(fontSize: 10),)
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
