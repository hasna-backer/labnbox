import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child:   ClipRRect(

        borderRadius: BorderRadius.only(

          topLeft: Radius.circular(25.0),

          topRight: Radius.circular(25.0),

        ),

        child: BottomNavigationBar(

            backgroundColor: Color.fromARGB(255, 40, 2, 77),

            selectedItemColor: Colors.white,

            unselectedItemColor: Colors.white54,

            currentIndex: 1,

            items: const [

              BottomNavigationBarItem(

                icon: Icon(Icons.person_outline_rounded, color: Colors.white54),

                label: 'Dashboard1',

              ),

              BottomNavigationBarItem(

                icon: Icon(Icons.science_outlined, color: Colors.white),

                label: 'Experiments',

              ),

              BottomNavigationBarItem(

                icon: Icon(Icons.settings_outlined, color: Colors.white54),

                label: 'Learn It',

              ),

            ]

        ),

      ),
    );




  }
}
