import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page2/ressources/global_variables.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey();
  bool _isObscure = true;
  TextEditingController _emailControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 19, 18, 21),
        ),
        body: Container(
          height: double.infinity,
          padding: const EdgeInsets.only(right: 15, left: 15),
          color: Color.fromARGB(255, 19, 18, 21),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sign Up',
                style: headerTextSyle,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text('Your information is safe with us.',
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
                        'Full name',
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
                          decoration: InputDecoration(
                            hintText: 'Yannik Kadjie',
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
                        height: 15.0,
                      ),
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
                        'Phone number',
                        style: labelTextSyle,
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        decoration: formDecoration,
                        child: TextFormField(
                          style: formTextSyle,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            prefixText: '+237 ',
                            prefixStyle: formTextSyle,
                            hintText: '655 568 986',
                            hintStyle: formTextSyle,
                            enabledBorder: border,
                            focusedBorder: border,
                            errorBorder: focusBorder,
                          ),
                          validator: (value) {
                            if (value == null || value.length < 9) {
                              return 'Please enter a correct number';
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
                        height: 25,
                      ),
                      ElevatedButton(
                          onPressed: () => {},
                          child: Text(
                            'Sign Up',
                            style: formTextSyle,
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 247, 93, 21),
                              minimumSize: Size(
                                  MediaQuery.of(context).size.width, 55.0))),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account ?',
                              style: formTextSyle),
                          TextButton(
                              onPressed: (() =>
                                  Navigator.pushNamed(context, '/signin')),
                              child: Text('Sign in',
                                  style: GoogleFonts.lato(
                                      color: Color.fromARGB(255, 247, 93, 21))))
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
