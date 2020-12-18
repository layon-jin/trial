import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:trial/MyOrders.dart';
import 'package:trial/NewOrder.dart';
import 'package:trial/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Street',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: MyHomePage(title: 'Home Page'),
        routes: <String, WidgetBuilder>{
          "/a": (BuildContext context) => Page1("Place a new order"),
          "/tab-page": (BuildContext context) => Page2(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 15.0,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.yellow,
        unselectedLabelStyle: TextStyle(color: Colors.black, fontSize: 12),
        backgroundColor: Colors.red,
        currentIndex: _currentIndex,
        onTap: (int index) => setState(() => _currentIndex = index),
        items: [
          for (final tabItem in TabNavigationItem.items)
            BottomNavigationBarItem(
                //  backgroundColor: Colors.white,
                icon: tabItem.icon,
                // ignore: deprecated_member_use
                title: Text(
                  tabItem.title,
                  style: TextStyle(
                      // color: Colors.grey[900],
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ))
        ],
      ),
    );
  }
}
