import 'package:flutter/material.dart';
import 'package:visit_card/screens/detail.dart';
import 'screens/home_page.dart';

void main() => runApp(VisitCard());

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
