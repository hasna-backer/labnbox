import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/rendering.dart';


class Body extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const Body({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 80,
            right: 5,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 15,
              color: Colors.white,
              margin: EdgeInsets.only(left: 10, right: 20),
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                child: SizedBox(
                  height: 180,
                  width: 350,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    // child: Text(
                    //   'Card content goes here',
                    //   style: TextStyle(fontSize: 20),
                    // ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 215,
            top: 30,
            child:Padding(
              padding: const EdgeInsets.only(left: 8.0,top: 8),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      // "Elephant\nToothpaste",
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      // "Fill your house with\ngiant toothpaste!",
                      subtitle,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(height:5),
                    Container(
                      width: 60,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Chemistry',
                          style: TextStyle(
                            color: Color.fromARGB(255, 88, 3, 103),
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          'Difficulty',
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purple[800],
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purple[800],
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purple[800],
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purple[300],
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purple[300],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    ElevatedButton(
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 81, 3, 95),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Make It',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),

          Positioned(
            left: 50,
            top: 38,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              child: Image.asset(
                // 'assets/images/img1.jpg',
                imagePath,
                fit: BoxFit.cover,
                height: 160,
                width: 160,
              ),
            ),
          ),
        ],
      ),
    );
















  }
}