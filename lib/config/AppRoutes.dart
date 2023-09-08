import 'package:flutter_application_test/pages/EditProfilePage.dart';
import 'package:flutter_application_test/pages/LoginPage.dart';
import 'package:flutter_application_test/pages/HomePage.dart';
import 'package:flutter_application_test/pages/MainPage.dart';

class AppRoutes {
  static final pages = {
    "/": (context) => LoginPage(),
    "/home": (context) => HomePage(),
    "/main": (context) => MainPage(),
    "/edit_profile": (context) => EditProfilePage(),
  };

  static const login = "/";
  static const Main = "/main";
  static const editProfile = "/edit_profile";
}
