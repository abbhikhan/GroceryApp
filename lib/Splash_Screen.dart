// ignore_for_file: file_names, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/Signin/SignIn.dart';
import 'Custom_button.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Center(
                child: Image(
                  image: AssetImage(
                    'assets/images/imagei.jpg',
                  ),
                  height: 502.07.h,
                  width: 270.w,
                ),
              ),
              Text(
                'Grocery Shop',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4F504E),
                  fontSize: 30.sp,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                'at your door',
                style: TextStyle(
                  color: Color(0xff616260),
                  fontSize: 20.sp,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                'The easiest way to buy your \n        grocery shopping',
                style: TextStyle(
                  color: Color(0xffD8D8D8),
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              CustomButton(
                text: 'Get Started',
                buttonColour: Color(0xff82CD47),
                onpressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
