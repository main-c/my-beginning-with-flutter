import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.center,
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                      color: const Color(0xFF2E1C4C),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                      border: Border.all(
                          color: const Color(0xFF2E1C4C),
                          style: BorderStyle.solid)),
                  child: const Center(
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 22.5,
                    ),
                  )),
              Container(
                alignment: Alignment.center,
                height: 45.0,
                width: 264.0,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                    border: Border.all(
                        color: const Color(0xFF2E1C4C),
                        style: BorderStyle.solid)),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Your Username...',
                  ),
                  keyboardType: TextInputType.text,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                      color: const Color(0xFF2E1C4C),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                      border: Border.all(
                          color: const Color(0xFF2E1C4C),
                          style: BorderStyle.solid)),
                  child: const Center(
                    child: Icon(
                      Icons.contact_mail,
                      color: Colors.white,
                      size: 22.5,
                    ),
                  )),
              Container(
                alignment: Alignment.center,
                height: 45.0,
                width: 264.0,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                    border: Border.all(
                        color: const Color(0xFF2E1C4C),
                        style: BorderStyle.solid)),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Your Email...',
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.center,
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                      color: const Color(0xFF2E1C4C),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                      border: Border.all(
                          color: const Color(0xFF2E1C4C),
                          style: BorderStyle.solid)),
                  child: const Center(
                    child: Icon(
                      Icons.password,
                      color: Colors.white,
                      size: 22.5,
                    ),
                  )),
              Container(
                alignment: Alignment.center,
                height: 45.0,
                width: 264.0,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                    border: Border.all(
                        color: const Color(0xFF2E1C4C),
                        style: BorderStyle.solid)),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Your Password...',
                  ),
                  keyboardType: TextInputType.text,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
