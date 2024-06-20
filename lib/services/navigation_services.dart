import 'package:connectify/pages/home_page.dart';
import 'package:connectify/pages/login_page.dart';
import 'package:connectify/pages/register_page.dart';
import 'package:flutter/material.dart';

class NavigationService{
  late GlobalKey<NavigatorState> _navigatorKey;
  

  final Map<String, Widget Function(BuildContext)> _routes = {
    "/login": (context) => const LoginPage(),
    "/register": (context) => const RegisterPage(),
    "/home": (context) => const HomePage()
  };

  GlobalKey<NavigatorState>? get navigatorKey{
    return _navigatorKey;
  }

  Map<String, Widget Function(BuildContext)> get routes {
    return _routes;
  }

  NavigationService(){
    _navigatorKey = GlobalKey<NavigatorState>();
  }

  void pushNamed(String routeName){
    _navigatorKey.currentState?.pushNamed(routeName);
  }

  void push(MaterialPageRoute route){
    _navigatorKey.currentState?.push(route);
  }

  void pushReplacementNamed(String routeName){
    _navigatorKey.currentState?.pushReplacementNamed(routeName);
  }

  void goBack(){
    _navigatorKey.currentState?.pop();
  }
}