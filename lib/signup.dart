import 'package:flutter/material.dart';
class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
            children: [
              SizedBox(height: 20),
              Material(
                elevation: 6,
                shadowColor: Colors.purple,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Registered Email ID / Phone Number",
                    hintStyle: TextStyle(color: Colors.purple[100]),
                    fillColor: Colors.white70,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Material(
                elevation: 6,
                shadowColor: Colors.purple,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(color: Colors.purple[100]),
                    fillColor: Colors.white70,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Material(
                elevation: 6,
                shadowColor: Colors.purple,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Registered Email ID / Phone Number",
                    hintStyle: TextStyle(color: Colors.purple[100]),
                    fillColor: Colors.white70,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  ),
                ),
              ),

              SizedBox(height: 10),
              Material(
                elevation: 6,
                shadowColor: Colors.purple,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(color: Colors.purple[100]),
                    fillColor: Colors.white70,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  ),
                ),
              ),

              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.black26,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5,
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Register',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Container(
                    width: 250, // set a fixed width
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        Text(
                          '(OR)',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  Container(
                    height: 40,
                    width: 250, // set a fixed width
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 2, color: Colors.purple),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email, color: Color.fromARGB(255, 26, 10, 129)),
                        SizedBox(width: 5),
                        Text(
                          'Continue with Google',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.purple),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 40,

                    width: 250, // set a fixed width
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 2, color: Colors.purple),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook, color: Color.fromARGB(255, 26, 10, 129)),
                        SizedBox(width: 5),
                        Text(
                          'Continue with Facebook',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.purple),
                        ),
                      ],
                    ),
                  ),
                ],
              )



            ]
        )
    )
    ;





  }
}
