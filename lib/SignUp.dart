// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:grocery/Custom_button.dart';
import 'package:grocery/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: KTextColor,
                  ),
                ),
                Center(
                  child: Image(
                    image: AssetImage(
                      'assets/images/logo.png',
                    ),
                    // height: 178,
                    // width: 262,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: textfield(
                    name: 'Sign in',
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                text(
                  name: 'Name',
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter user Name',
                  ),
                ),
                text(name: 'Email'),
                TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: 'Enter email',
                  ),
                ),
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'mulish',
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: 'Enter Password',
                  ),
                ),
                Text(
                  'Confirm password',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'mulish',
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: 'Enter password',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Sign Up',
                  buttonColour: Color(0xff82CD47),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 15,
                        // fontFamily: 'mulish',
                        color: Color(0xff868889),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Color(0xff9BD76C),
                        disabledForegroundColor: Colors.grey, // Disable color
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class text extends StatelessWidget {
  String? name;
  text({required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Name',
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'mulish',
      ),
    );
  }
}

class textfield extends StatelessWidget {
  String? name;
  textfield({required this.name});
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      '$name',
      style: TextStyle(
        color: Color(0xff82CD47),
        fontWeight: FontWeight.w600,
        fontSize: 24,
      ),
    );
  }
}
