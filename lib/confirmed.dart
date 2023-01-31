// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/Custom_button.dart';
import 'package:grocery/Payment/payment.dart';
import 'package:grocery/constants.dart';
import 'package:grocery/profile.dart';

class Confirmed extends StatefulWidget {
  const Confirmed({super.key});

  @override
  State<Confirmed> createState() => _ConfirmedState();
}

class _ConfirmedState extends State<Confirmed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(
                Icons.arrow_back,
                color: kTbalck,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Center(
                  child: Image.asset(
                    'assets/images/tick.png',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                Text(
                  'Order Confirmed',
                  style: TextStyle(
                      fontSize: 35.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                Text(
                  'You order has been confirmed.',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                Text(
                  'Will be delivered soon',
                  style: TextStyle(fontSize: 15.sp),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                Text(
                  'Order id:100000090',
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                CustomButton(
                  text: 'Track Your Order',
                  buttonColour: Color(0xff82CD47),
                  onpressed: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
