import 'package:flutter/material.dart';

void main() {
  runApp(Page2());
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: Text('this.title'),
                bottom: TabBar(tabs: [
                  Tab(child: Icon(Icons.directions_bike)),
                  Tab(child: Icon(Icons.directions_bike)),
                  Tab(child: Icon(Icons.directions_bike)),
                ]),
              ),
              body: TabBarView(children: [
                Center(
                  child: Text('Good'),
                ),
                Center(
                  child: Text('bad'),
                ),
                Center(
                  child: Text('Good'),
                ),
              ]),
            )));
  }
}
