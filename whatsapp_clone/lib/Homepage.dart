import 'package:flutter/material.dart';

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
        backgroundColor:const Color.fromARGB(255, 73, 131, 7),
        title:Row(
          children: [
            Text("WhatsApp",style: TextStyle(color: Colors.white),),
            Spacer(),
            Icon(Icons.camera_alt,color: Colors.white,),
            Container(
              width:35
            ),
            Icon(Icons.search,color:Colors.white),
            Container(
              width:30
            ),
            Icon(Icons.more_vert,color: Colors.white,),
            Container(
              width:10
            ),
          ],
        )
      ),
      body: Container(
        height: 50,
        color: const Color.fromARGB(255, 73, 131, 7),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Text("Chats",style: TextStyle(color:Colors.white),),
              Spacer(),
              Text("Updates",style: TextStyle(color:Colors.white),),
              Spacer(),
              Text("Calls",style: TextStyle(color:Colors.white),)
          ],),
        ),
      ),
    );
  }
}