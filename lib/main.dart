import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trial/new_order.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: new ThemeData(primarySwatch: Colors.red),
        home: new HomePage(),
        routes: <String, WidgetBuilder>{
          "/a": (BuildContext context) => Page1("Place a new order"),
          "/b": (BuildContext context) => Page1("My Orders"),
          "/c": (BuildContext context) => Page1("Change Password"),
        });
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text("Home"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Layon"),
              accountEmail: new Text("kunaguero@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("L"),
              ),
            ),
            new ListTile(
              title: new Text("Home"),
              trailing: new Icon(Icons.home),
              onTap: () => Navigator.of(context).pushNamed(""),
            ),
            new Divider(),
            new ListTile(
              title: new Text("New Order"),
              trailing: new Icon(Icons.add_circle),
              onTap: () => Navigator.of(context).pushNamed("/a"),
            ),
            new Divider(),
            new ListTile(
              title: new Text("My Orders"),
              trailing: new Icon(Icons.local_grocery_store),
              onTap: () => Navigator.of(context).pushNamed("/b"),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Change Password"),
              trailing: new Icon(Icons.settings),
              onTap: () => Navigator.of(context).pushNamed("/c"),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Logout"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(child: new Text(" Home ")),
      ),
    );
  }
}
