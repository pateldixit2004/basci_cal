import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int i=1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("$i"),
        actions: [
          GestureDetector(
            onTap: (){
              setState(() {
                i++;
              });
            },
            child: Center(child: Text("+\t",style: TextStyle(fontSize: 25))),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                i--;
              });
            },
            child: Center(child: Text("-\t",style: TextStyle(fontSize: 25))),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                i=i*2;
              });
            },
            child: Center(child: Text("2x\t",style: TextStyle(fontSize: 25))),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                i=i*4;
              });
            },
            child: Center(child: Text("4x\t",style: TextStyle(fontSize: 25),)),
          )
        ],
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            setState(() {
              print("hy");
            });
          },
          child: Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
