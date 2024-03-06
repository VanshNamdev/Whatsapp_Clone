import 'package:flutter/material.dart';

class Updates_Page extends StatefulWidget {
  const Updates_Page({super.key});

  @override
  State<Updates_Page> createState() => _Updates_PageState();
}

class _Updates_PageState extends State<Updates_Page> {
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
    );
  }
}