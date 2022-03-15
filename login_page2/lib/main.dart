import 'package:flutter/material.dart';
import 'package:login_page2/screens/sign_in.dart';
import 'package:login_page2/screens/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design',
      debugShowCheckedModeBanner: false,
      home: SignIn(),
      initialRoute: '/signin',
      routes: {
        '/signin': (BuildContext context) => SignIn(),
        '/signup': (BuildContext context) => SignUp(),
      },
    );
  }
}
