import 'package:flutter/material.dart';
import 'package:navigation_flutter/screen/setting_screen.dart';

class DetailScreen extends StatelessWidget {
  static const route = '/detail_screen';
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Now in Detail Page",
              style: TextStyle(fontSize: 22,color: Colors.amber),),
            FloatingActionButton(
                child: Icon(Icons.arrow_back),
                onPressed: (){
                  Navigator.pop(context);
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
