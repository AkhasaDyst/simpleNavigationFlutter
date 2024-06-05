import 'package:flutter/material.dart';
import 'package:navigation_flutter/screen/detail_screen.dart';

class SettingScreen extends StatelessWidget {
  static const route = '/setting_screen';
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Now in Setting Page",
              style: TextStyle(fontSize: 22, color: Colors.deepPurpleAccent),),
            FloatingActionButton(
              child: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              child: Text('Go to Detail',),
              onPressed: (){
                Navigator.of(context).pushNamed(DetailScreen.route);
              },
            )
          ],
        ),
      ),
    );
  }
}
