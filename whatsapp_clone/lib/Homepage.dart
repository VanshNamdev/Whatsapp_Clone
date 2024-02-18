import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        backgroundColor:const Color.fromRGBO(18, 140 ,126,1),
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
      body: Column(
        children: [
          Container(
            height: 50,
            color:const Color.fromRGBO(18, 140 ,126,1),
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
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context,index){
              return Row(
                children: [
                  Icon(Icons.person,size: 50,),
                  Text("Name of the person"),
                  Spacer(),
                  Text("LastMSG")
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}