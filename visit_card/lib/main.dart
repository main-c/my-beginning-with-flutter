import 'package:flutter/material.dart';
import 'package:visit_card/screens/portofolio_screen.dart';
import 'screens/home_page_screen.dart';

void main() => runApp(const VisitCard());

class VisitCard extends StatelessWidget {
  const VisitCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Business card',
      debugShowCheckedModeBanner: false,
      home: PortofolioScreen(),
    );
  }
}
