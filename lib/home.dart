import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeUI();
  }
}

class HomeUI extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple, title: Text('Drawer Menu')),
      body: Center(
        child: Text('Drawer Widget'),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/pic1.jpg'), fit: BoxFit.fill),
              ),
              accountName: Text('Oeng Mengthong'),
              accountEmail: Text('mengthongoenggl@gmail.com'),
              currentAccountPicture: CircleAvatar(
                  radius: 40, backgroundImage: AssetImage('images/image1.jpg')),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/image2.jpg')),
                CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/image1.jpg')),
              ],
            ),
            Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.calendar_today,color: Colors.deepPurple,),
                  title: Text('Calendar'),
                ),
                ListTile(
                  leading: Icon(Icons.settings,color: Colors.deepPurple,),
                  title: Text('Setting'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
