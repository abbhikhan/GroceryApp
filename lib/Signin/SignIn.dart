// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/Custom_button.dart';
import 'package:grocery/Home.dart';
import 'package:grocery/Signup/SignUp.dart';
import 'package:grocery/constants.dart';

// ignore: use_key_in_widget_constructors
class Login extends StatelessWidget {
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8),
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
                  child: Text(
                    textAlign: TextAlign.center,
                    'Sign In',
                    style: TextStyle(
                      color: KTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'Name',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'mulish',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      //  hintText: 'Enter user Name',
                      ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 20.sp,
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
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: KTextColor,
                      disabledForegroundColor: Colors.grey, // Disable color
                    ),
                    child: Text('Forgot password?'),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomButton(
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  text: 'Sign in',
                  buttonColour: KTextColor,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                        // color: Colors.white,
                        height: 30.h,
                        image: AssetImage(
                          'assets/images/gogle.png',
                        )),
                    Text(
                      'Login with Google',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'mulish',
                        color: Color(0xff1A1A1A),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont you have an account?',
                      style: TextStyle(
                        fontSize: 15.sp,
                        // fontFamily: 'mulish',
                        color: Color(0xff868889),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: KTextColor,
                        disabledForegroundColor: Colors.grey, // Disable color
                      ),
                      child: Text(
                        'Sign up',
                        style: TextStyle(fontSize: 20.sp),
                      ),
                    ),
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

class Textfield extends StatelessWidget {
  const Textfield(
      {super.key, required this.hintText, required this.decoration});
  final Widget decoration;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Textfield(hintText: 'name and password', decoration: decoration);
  }
}
