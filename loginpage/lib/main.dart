import 'package:flutter/material.dart';
import 'package:loginpage/login_page.dart';
import 'package:loginpage/home_page.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  final routes = <String, WidgetBuilder> {
    LoginPage.tag: (context) => const LoginPage(),
    HomePage.tag:  (context) => const HomePage(),
  };


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coin du devellopeur',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home:  LoginPage(),
      routes: routes,
    );
  }
}
