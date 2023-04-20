import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labnbox/main2.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 30,
        right: 30,
      ),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Material(
              elevation: 6,
              shadowColor: Colors.purple,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Registered Email ID / Phone Number",
                  hintStyle: TextStyle(color: Colors.purple[100]),
                  fillColor: Colors.white70,
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Material(
              elevation: 6,
              shadowColor: Colors.purple,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Your Password",
                  hintStyle: TextStyle(color: Colors.purple[100]),
                  fillColor: Colors.white70,
                  filled: true,
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.black26, // set the background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      30), // set the border radius to make it rounded
                ),
                elevation: 5, // set the elevation to create a shadow effect
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => new MyApp()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Sign In',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
