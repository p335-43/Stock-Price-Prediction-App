import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_signin/policies.dart';
import 'package:firebase_signin/screens/signin_screen.dart';

import 'Prediction.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Klaus'),
            accountEmail: Text('Klaus_M@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child:
                Image.network(
                  'https://th.bing.com/th/id/OIP.ToHqCZOJSkCKVZ-6wll96gHaFj?w=256&h=192&c=7&r=0&o=5&dpr=1.4&pid=1.7',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
                // Image.asset('logo.jpg', fit: BoxFit.cover,
                //    width: 90,
                //    height: 90,)

              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          // ListTile(
          //   leading: Icon(Icons.favorite),
          //   title: Text('Profile'),
          //   // onTap: () => null,
          //   onTap: () {
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()),);
          //   },
          // ),
          // ListTile(
          //   leading: Icon(Icons.person),
          //   title: Text('Friends'),
          //   onTap: () => null,
          // ),
          // ListTile(
          //   leading: Icon(Icons.share),
          //   title: Text('Share'),
          //   onTap: () => null,
          // ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Prediction'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => StockPredictor()),);
            },
          ),
          // Divider(),
          // ListTile(
          //   leading: Icon(Icons.settings),
          //   title: Text('Settings'),
          //   onTap: () => null,
          // ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Instructions'),
            // onTap: () => null,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => policies()),);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            // onTap: () => null,
            onTap: () {
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    );
  }
}