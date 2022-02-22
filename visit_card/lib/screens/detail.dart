import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff052555),
      appBar: AppBar(
        title: const Text(
          'More about me',
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('assets/me.png'),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Card(
                color: Colors.transparent,
                margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Passionate about programming, I like to use computers to solve problems of everyday life',
                    style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontSize: 18.0,
                        height: 1.5,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'yannikkwc@gmail.com',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'JosefinSans',
                        fontSize: 15.0),
                  ),
                  Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.blue,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '@YannikKadjie',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'JosefinSans',
                        fontSize: 15.0),
                  ),
                  Icon(
                    FontAwesomeIcons.github,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '@main-c',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'JosefinSans',
                        fontSize: 15.0),
                    
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
