import 'package:demo/view/login_screen/login_screen.dart';
import 'package:demo/view/login_screen/sign_up.dart';
import 'package:demo/view/settings/settings.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.orangeAccent
            ),
              child: Image(
                image: AssetImage('assets/logo_1.png'),
              ),

          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),

          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),

          ListTile(
            leading: Icon(Icons.favorite),
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
            onTap: ()
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
              );
            },
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),

          ListTile(
            onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            leading: Icon(Icons.login),
            title: Text('Login'),
          ),


        ],
      ),
    );


  }
}

