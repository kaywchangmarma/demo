import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue
            ),
              child: Text(
                'Demo'
              ),),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),


          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),

          ListTile(
            leading: Icon(Icons.category),
            title: Text('Wishlist'),
          ),
          ListTile(
            leading: FlutterLogo(size: 20,),
            title: Text('Notification'),
          ),
          ListTile(
            leading: Icon(Icons.eleven_mp),
            title: Text('Privacy policy'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),


        ],
      ),
    );


  }
}

