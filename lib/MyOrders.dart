import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;

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
                  indicatorWeight: 2,
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
                      icon: Text('Completed',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ]),
            ),
            body: TabBarView(children: [
//             any widget can work very well here <3
              _followersList("order 1 tab"),
              _followersList("order 2 tab"),
              _followersList("order 3 tab")

              //   _followersList(false),
              // _followersList(true)
            ]),
          )),
    );
  }

  Widget _followersList(String text) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        title: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // ignore: missing_required_param
              Expanded(
                flex: 1,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Products",
                    hintStyle: TextStyle(color: Colors.grey),
                    icon: Icon(
                      Icons.search,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mic,
                        color: Colors.red,
                      ),
                    ),
                    VerticalDivider(color: Colors.black),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.red,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
