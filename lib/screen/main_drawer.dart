import 'package:flutter/material.dart';
import 'package:navigation_flutter/screen/detail_screen.dart';
import 'package:navigation_flutter/screen/setting_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Column(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 30, bottom: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage('https://www2.deloitte.com/content/dam/Deloitte/nl/Images/header_images/deloitte-nl-cm-digital-human-banner-3.jpg/_jcr_content/renditions/cq5dam.web.1400.350.desktop.jpeg'),
                        fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  'Yudhi Winantoro',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'yudhiwinantoro@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(DetailScreen.route);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Setting',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(SettingScreen.route);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
