import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:labnbox/body.dart';
import 'package:labnbox/bottomnavigation.dart';
import 'package:labnbox/drawer.dart';
import 'package:labnbox/topbody.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Mydrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 40, 2, 77),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0),
              ),
            ),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text('LAB N BOX',style: GoogleFonts.archivoBlack()),
              centerTitle: true,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: TopBody(),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(
                  height: 215, // set a fixed height for each Body widget
                  child: Body(
                    imagePath: "assets/images/img1.jpg",
                    title: "Elephant\nToothpaste",
                    subtitle: "Fill your house with\ngiant toothpaste!",
                  ),
                ),
                SizedBox(height: 2,),
                SizedBox(
                  height: 215,
                  child: Body(
                    imagePath: "assets/images/img2.jpg",
                    title: "Chemical\nChameleon",
                    subtitle: "Fill your house with\ngiant toothpaste!",
                  ),
                ),
                SizedBox(height: 2,),
                SizedBox(
                  height: 215,
                  child: Body(
                    imagePath: "assets/images/img3.jpg",
                    title: "Lemon\nBattery",
                    subtitle:"Fill your house with\ngiant toothpaste!",
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );


  }
}