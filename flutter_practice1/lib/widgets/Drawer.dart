import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Colors.blueGrey,
          child: ListView(
              children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountEmail: Text("aprashant21@tbc.edu.np"),
                accountName: Text("Prashant Adhikari"),
                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("res/images/ma.jpg"),)
                ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home
            , color: Colors.white,),
            title: Text("Home"
            , style: TextStyle(color: Colors.white),
            textScaleFactor: 1.4,),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled
            , color: Colors.white,),
            title: Text("Profile"
            , style: TextStyle(color: Colors.white),
            textScaleFactor: 1.4,),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail
            , color: Colors.white,),
            title: Text("Email Me"
            , style: TextStyle(color: Colors.white),
            textScaleFactor: 1.4,),
          ),
              ],
            ),
        ));
  }
}
