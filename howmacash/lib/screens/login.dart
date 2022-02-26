import 'package:flutter/material.dart';
import 'package:howmacash/screens/form.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 211,
            decoration: const BoxDecoration(
                color: Color(0xFF2E1C4C),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80.0),
                    bottomRight: Radius.circular(80.0))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 75.0,
                  ),
                  SizedBox(
                    height: 33.0,
                  ),
                  Card(
                    elevation: 0.0,
                    color: Colors.transparent,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontFamily: 'Google Sans',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Card(
            color: Colors.transparent,
            elevation: 0.0,
            margin: EdgeInsets.all(8.0),
            child: Text(
              "Welcome back, nice to have you here. Please verify your identity and let’s start doing business. Click here for help.",
              style: TextStyle(
                  fontFamily: 'Google Sans',
                  fontSize: 13.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  height: 1.5,
                  color: Colors.black),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(
            height: 95,
          ),
          LoginForm(),
          const SizedBox(
            height: 65,
          ),
          Container(
              height: 44.0,
              width: 309.0,
              decoration: const BoxDecoration(
                  color: Color(0xFF2E1C4C),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: const Center(
                child: Text(
                  'Continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Google Sans',
                      fontSize: 15.0,
                      height: 1,
                      color: Colors.white),
                ),
              )),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Don’t have an account yet?',
                style: TextStyle(
                  fontFamily: 'Google Sans',
                  fontSize: 12.0,
                  color: Color(
                    0xFF2E1C4C,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              TextButton(
                onPressed: () => {},
                child: const Text(
                  'SignUp',
                  style: TextStyle(
                    fontFamily: 'Google Sans',
                    fontSize: 12.0,
                    fontStyle: FontStyle.italic,
                    color: Color(
                      0xFF2E1C4C,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    )));
  }
}
