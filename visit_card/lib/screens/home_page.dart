import 'package:flutter/material.dart';
import 'package:visit_card/screens/detail.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.blueGrey,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff052555),
      appBar: AppBar(
        title: const Text('My business card'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
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
                    'Yannik KADJIE',
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
      ),
    );
  }
}








 Container(
                        alignment: Alignment.center,
                        height: 45.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0)),
                            border: Border.all(
                                color: const Color(0xFF2E1C4C),
                                style: BorderStyle.solid)),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Your Username...',
                              icon: Icon(
                                Icons.person,
                                color: Colors.white,
                              )),
                          keyboardType: TextInputType.text,
                        ),
                      )