import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() => runApp(const VisitCard());

class VisitCard extends StatelessWidget {
  const VisitCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Business card',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
