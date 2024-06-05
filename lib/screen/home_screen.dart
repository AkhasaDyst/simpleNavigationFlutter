import 'package:flutter/material.dart';
import 'package:navigation_flutter/screen/detail_screen.dart';
import 'package:navigation_flutter/screen/main_drawer.dart';
import 'package:navigation_flutter/screen/setting_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Now in Home Page", style: TextStyle(fontSize: 22),),
            ElevatedButton(
              child: Text('Go to Detail',),
              onPressed: (){
                Navigator.of(context).pushNamed(DetailScreen.route);
              },
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              child: Text('Go to Setting',),
              onPressed: (){
                Navigator.of(context).pushNamed(SettingScreen.route);
              },
            )

          ],
        ),
      ),
    );
  }
}
