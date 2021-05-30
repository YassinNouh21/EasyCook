import 'package:easy_cook/pages/home/admin/AdminHome.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_cook/pages/home/home_screen.dart';
import 'package:easy_cook/pages/loginpage/LoginPage.dart';
import 'package:easy_cook/pages/loginpage/SignUp.dart';
import 'package:easy_cook/pages/recipe_details/RecipeDetailsScreen.dart';

var routes = <String, WidgetBuilder>{
  HomeScreen.screen: (contex) => HomeScreen(),
  LoginPage.screen: (contex) => LoginPage(),
  SignUp.screen: (contex) => SignUp(),
  RecipeDetailsScreen.screen: (contex) => RecipeDetailsScreen(),
  AdminHome.screen: (contex) => AdminHome(),
};
