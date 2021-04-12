import 'package:design_add_a_drawer_to_a_screen/drawer/settings.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Center(
        child: Text('homePage'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.person,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Arif Budiman Arrosyid',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text('Settings'),
              onTap: () {
                //print('klik Settings');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => settings(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: Text('Logout'),
              onTap: () {
                print('klik Logout');
              },
            )
          ],
        ),
      ),
    );
  }
}
