import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
          length: 3,
          child: new Scaffold(
            appBar: AppBar(
              elevation: 5,
              backgroundColor: Colors.red,
              actions: <Widget>[
                new IconButton(
                    icon: new Icon(Icons.add_circle_outline), onPressed: () {}),
                new IconButton(
                    icon: new Icon(Icons.more_vert), onPressed: () {}),
              ],
              // leading: InkWell(
              //   onTap: () => Navigator.pop(context),
              //   child: Icon(
              //     Icons.arrow_back_ios,
              //     size: 20,
              //   ),
              // ),
              bottom: TabBar(
                  indicatorColor: Colors.white,
                  indicatorWeight: 3,
                  tabs: [
                    Tab(
                      icon: Text(
                        'Pending',
                        style: TextStyle(color: Colors.white),
                      ),
                      //icon: Icon(Icons.school),
                    ),
                    Tab(
                      icon: Text(
                        'Active',
                        style: TextStyle(color: Colors.white),
                      ),
                      //icon: Icon(Icons.school),
                    ),
                    Tab(
                      icon: Text('Completedd',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ]),
            ),
            body: TabBarView(children: [
//             any widget can work very well here <3
              new IconButton(
                  icon: new Icon(Icons.add_circle_outline), onPressed: () {}),
              _followersList("order 2 tab"),
              _followersList("order 3 tab")

              //   _followersList(false),
              // _followersList(true)
            ]),
          )),
    );
  }

  Widget _followersList(String text) {
    return Center(
      child: Text(text),
    );
  }
}
