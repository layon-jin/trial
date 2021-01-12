//import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:trial/home.dart';
import 'package:trial/login-success/login_success.dart';
import 'package:trial/profile/profile.dart';
import 'package:trial/screens/splash/splash_screen.dart';
import 'package:trial/sign-in/sign_in.dart';

import 'forgot-password/forgot_password.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignIn.routeName: (context) => SignIn(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  LoginSuccess.routeName: (context) => LoginSuccess(),
  MyApp.routeName: (context) => MyApp(),
  Profile.routeName: (context) => Profile(),
};
