import 'package:flutter/material.dart';
import 'package:trial/profile/profile.dart';
import 'package:trial/routes.dart';
import 'package:trial/screens/splash/splash_screen.dart';
import 'package:trial/theme.dart';

void main() {
  runApp(NewApp());
}

class NewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New',
      theme: theme(),
      // home: SplashScreen(),
      //initialRoute: SplashScreen.routeName,
      initialRoute: Profile.routeName,
      routes: routes,
    );
  }
}
