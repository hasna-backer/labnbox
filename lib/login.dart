
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:hasnalogin/demologin.dart';
// import 'package:hasnalogin/signup.dart';
import 'package:labnbox/loginpage.dart';
import 'package:labnbox/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  double cardheight=750.0;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }
  bool isLogin=true;
  // bool get isLastTabSelected => _tabController.index == _tabController.animation. && _tabController.index == _tabController.length - 1;

  // static ValueNotifier<int> selectedContainerNotifire = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/back.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 130,
              child: Container(
                child: Center(
                  child: Text(
                    "LAB N BOX",
                    style: GoogleFonts.aladin(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: cardheight,
                  child: Card(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 350,top: 20),
                    elevation: 5,
                    shadowColor: Colors.blueAccent[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        TabBar(
                          indicatorColor: Colors.grey,
                          labelColor: Colors.purple,
                          onTap: (index) {
                            if (index == 1) {
                              setState(() {
                                cardheight = 890.0;
                                isLogin = false;
                              });
                            } else if (index == 0) {
                              setState(() {
                                cardheight = 750.0;
                                isLogin = true;
                              });
                            }
                          },
                          indicator: isLogin
                              ? BoxDecoration(
                            backgroundBlendMode: BlendMode.difference,
                            color: Colors.white30,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                            ),
                          )
                              : BoxDecoration(
                            backgroundBlendMode: BlendMode.difference,
                            color: Colors.white30,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.0),
                            ),
                          ),
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          controller: _tabController,
                          tabs: const [
                            Tab(
                              text: 'Sign In',
                            ),
                            Tab(
                              text: 'Sign Up',
                            ),
                          ],
                          isScrollable: false,
                          unselectedLabelColor: Colors.grey,
                        ),
                        Expanded(
                          child: TabBarView(
                            physics: NeverScrollableScrollPhysics(),
                            controller: _tabController,
                            children: const [
                              LoginPage(),
                              SignUp(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Made in",
                    style: GoogleFonts.aladin(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.favorite_border, color: Colors.white),
                  Text(
                    "with science",
                    style: GoogleFonts.aladin(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}