import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopBody extends StatelessWidget {
  const TopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 1, // adjust the value as needed
      child: Container(
        margin: EdgeInsets.only(left: 10,right: 10,),
        child: Card(
          elevation: 25,
          child: Column(
            children: [
              // First row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      // TODO: Navigate back
                    },
                  ),
                  Text(
                    'Experiments List',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 20.0),
                ],
              ),
              // Second row
              // Second row
              Padding(
                padding: EdgeInsets.only(left: 5,bottom:0),
                child: Row(
                  children: [
                    Container(
                      width: 80.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.filter_list),
                          SizedBox(width: 4.0),
                          Text('Filter'),
                        ],
                      ),
                    ), SizedBox(width: 6.0),
                    Container(
                      height: 20.0,
                      width: 1.0,
                      color: Colors.black,
                    ),
                    SizedBox(width: 6.0),
                    Stack(
                        children:[
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                                  child: Text(
                                    'Trending',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 4.0),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6.0),
                                    border: Border.all(color: Colors.purple),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                                  child: Text(
                                    'All',
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                ),
                                SizedBox(width: 6.0),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(color: Colors.purple),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                                  child: Text(
                                    'Physics',
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                ),
                                SizedBox(width: 6.0),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(color: Colors.purple),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                                  child: Text(
                                    'Chemistry',
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                ),
                                SizedBox(width: 6.0),


                              ],
                            ),
                          ),
                          Positioned(
                            top: -2,
                            left: 215,
                            child: Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(4.0),
                              child: Container(
                                width: 30.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 253, 251, 251),
                                ),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),






                        ] ),
                  ],
                ),
              ),

              // Add your rows here...
            ],
          ),
        ),
      ),
    );



  }
}