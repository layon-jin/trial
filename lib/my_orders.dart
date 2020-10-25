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
          length: 2,
          child: new Scaffold(
            appBar: AppBar(
              elevation: 5,
              backgroundColor: Colors.red,
              // leading: InkWell(
              //   onTap: () => Navigator.pop(context),
              //   child: Icon(
              //     Icons.arrow_back_ios,
              //     size: 20,
              //   ),
              // ),
              bottom: TabBar(
                  indicatorColor: Colors.green[900],
                  indicatorWeight: 4,
                  tabs: [
                    Tab(
                      icon: Text(
                        'Order 1',
                        style: TextStyle(color: Colors.black),
                      ),
                      //icon: Icon(Icons.school),
                    ),
                    Tab(
                      icon: Text('Order 2',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ]),
            ),
            body: TabBarView(children: [
//             any widget can work very well here <3
              _followersList("order 1 tab"),
              _followersList("order 2 tab")

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
