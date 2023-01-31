// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  String text;
  final buttonColour;
  Function()? onpressed;
  CustomButton({
    required this.text,
    required this.buttonColour,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: onpressed,
        child: Container(
            height: 50.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: buttonColour,
              borderRadius: BorderRadius.circular(50),
            ),
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 22.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
      ),
    );
  }
}
