import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(""),
            accountEmail: Text(""),


            decoration: BoxDecoration(
              image: DecorationImage(

                image:  AssetImage('assets/images/drawer.jpg'),
                fit: BoxFit.fill,
              ),
            ),

          ),
          ListTile(

            leading: Icon(Icons.person,color: Colors.blue),
            title: Text("Account",style: TextStyle(fontStyle: FontStyle.italic)),
            onTap: () {

              //           Navigator.push(context,
              // MaterialPageRoute(builder: (context) => Accountlink()));
            },
          ),
          ListTile(
            leading: Icon(Icons.money,color: Colors.green),
            title: Text("Loans",style: TextStyle(fontStyle: FontStyle.italic)),
            onTap: () {

            },
          ),
          ListTile(
            leading: Icon(Icons.attach_money_outlined,color: Colors.yellowAccent),
            title: Text("Chits",style: TextStyle(fontStyle: FontStyle.italic)),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.gamepad_outlined,color: Colors.pinkAccent),
            title: Text("Auction",style: TextStyle(fontStyle: FontStyle.italic)),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.document_scanner_rounded,color: Colors.deepPurple),
            title: Text("KYC management",style: TextStyle(fontStyle: FontStyle.italic)),
            onTap: () {  },
          ),
          ListTile(
            leading: Icon(Icons.new_releases,color: Colors.cyanAccent),
            title: Text("News",style: TextStyle(fontStyle: FontStyle.italic)),
            onTap: () {

            },

          ),
          ListTile(
            leading: Icon(Icons.balance_outlined,color: Colors.blueGrey),
            title: Text("Balance enquiry",style: TextStyle(fontStyle: FontStyle.italic)),
            onTap: () {

            },
          )
        ],
      ),
    ) ;
  }
}