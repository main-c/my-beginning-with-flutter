import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visit_card/ressources/const_global.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: const Color(backgroundColor),
      expandedHeight: 240.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 90),
                margin: const EdgeInsets.all(20.0),
                alignment: Alignment.topLeft,
                child: Text('Yannik Kadjie, Software Developer',
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250.0, top: 10.0),
                child: Image.asset('assets/pe.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
