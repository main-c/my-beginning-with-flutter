import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              child: Container(
            alignment: Alignment.center,
            child: const Text(
              'Yannik Kadjie, Software Developer',
              style: TextStyle(color: Colors.black),
            ),
          )),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: const [
                 Text(
                  'Accueil',
                  style: TextStyle(color: Colors.black),
                ),
                 Text(
                  'Portfolio',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
