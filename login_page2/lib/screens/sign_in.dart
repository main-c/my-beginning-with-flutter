import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page2/ressources/global_variables.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey();
  bool _isObscure = false;
  TextEditingController _emailControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 19, 18, 21),
        ),
        body: ListView(shrinkWrap: false, children: [
          Container(
            padding: const EdgeInsets.only(right: 15, left: 15),
            color: const Color.fromARGB(255, 19, 18, 21),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
                Text(
                  'Hello Again',
                  style: headerTextSyle,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text('Welcome back you are been missed!',
                    style: subtitlesTextStyle),
                const SizedBox(
                  height: 30,
                ),
                Form(
                    autovalidateMode: AutovalidateMode.always,
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email address',
                          style: labelTextSyle,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5.0),
                          decoration: formDecoration,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: _emailControler,
                            style: formTextSyle,
                            decoration: InputDecoration(
                              hintText: 'yannikkwc@gmail.com',
                              hintStyle: formTextSyle,
                              enabledBorder: border,
                              focusedBorder: border,
                              errorBorder: focusBorder,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Password',
                          style: labelTextSyle,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5.0),
                          decoration: formDecoration,
                          child: TextFormField(
                            style: formTextSyle,
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                                hintText: '************',
                                hintStyle: formTextSyle,
                                enabledBorder: border,
                                focusedBorder: border,
                                errorBorder: focusBorder,
                                suffixIcon: IconButton(
                                    icon: Icon(_isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    })),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                              onPressed: (() => {}),
                              child: Text(
                                'Recover password',
                                style: subtitlesTextStyle,
                                textAlign: TextAlign.right,
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () => {},
                            child: Text(
                              'Login',
                              style: formTextSyle,
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 247, 93, 21),
                                minimumSize: Size(
                                    MediaQuery.of(context).size.width, 55.0))),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              color: Colors.white,
                              height: 3.0,
                            ),
                            Container(
                              width: 150,
                              child: Text(
                                'Or continue with',
                                style: subtitlesTextStyle,
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              height: 10.0,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton.icon(
                            icon: ImageIcon(
                              AssetImage('assets/google.png'),
                              color: Colors.red,
                            ),
                            onPressed: () => {},
                            label: Text(
                              'Log in with Google',
                              style: formTextSyle,
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 47, 50, 58),
                                minimumSize: Size(
                                    MediaQuery.of(context).size.width, 55.0))),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account ?",
                                style: formTextSyle),
                            TextButton(
                                onPressed: () =>
                                    Navigator.pushNamed(context, '/signup'),
                                child: Text('Sign up',
                                    style: GoogleFonts.lato(
                                        color:
                                            Color.fromARGB(255, 247, 93, 21))))
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
        ]));
  }
}
