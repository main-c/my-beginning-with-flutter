import 'package:flutter/material.dart';
import 'package:visit_card/ressources/const_global.dart';
import 'package:visit_card/screens/components/app_bar_component.dart';
import 'package:visit_card/screens/components/drawer_component.dart';
import 'package:visit_card/screens/detail.dart';
//import 'package:visit_card/screens/detail.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.blueGrey,
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerComponent(),
        backgroundColor: Colors.white,
        // backgroundColor: const Color(0xff052555),
        // appBar: AppBar(
        //   title: const Text('My business card'),
        //   backgroundColor: Colors.transparent,
        //   elevation: 0.0,
        // ),
        body: _buildBody2(context));
  }

  Widget _buildBody2(BuildContext context) {
    return CustomScrollView(
      slivers: [
        AppBarComponent(),
        SliverList(
          delegate: SliverChildListDelegate(<Widget>[
            Card(
              color: Colors.blue[900],
              margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Software developer, Computer science student ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontSize: 20.0,
                      height: 1.0,
                      color: Colors.white),
                ),
              ),
            ),
            Card(
              color: Colors.blue[900],
              margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Passionate about programming, I like to use computers to solve problems of everyday life',
                  style: styleDeMaCarte,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
        )
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/me.png'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Card(
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  nomCarteDeVisiste,
                  style: TextStyle(
                    fontFamily: 'JosefinSans',
                    fontSize: 30.0,
                    height: 1.5,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Card(
              color: Colors.transparent,
              margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Software developer, Computer science student ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontSize: 20.0,
                      height: 1.0,
                      color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const Detail();
                  }));
                },
                child: const Text(
                  'More about me',
                  style: TextStyle(
                      color: Colors.white70, fontFamily: 'JosefinSans'),
                ))
          ],
        ),
      ),
    );
  }
}
