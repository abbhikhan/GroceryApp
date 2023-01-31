// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/Custom_button.dart';
import 'package:grocery/Payment/payment.dart';
import 'package:grocery/Signup/SignUp.dart';

import 'constants.dart';

class Orderconformation extends StatefulWidget {
  @override
  State<Orderconformation> createState() => _OrderconformationState();
}

class _OrderconformationState extends State<Orderconformation> {
  String? address;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Order Confirmation',
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
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
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Your Details',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              OrderTextField('Address', 'Edit', Icon(Icons.location_on)),
              OrderTextField('Phone', 'Edit', Icon(Icons.call)),
              OrderTextField('Email', 'Edit', Icon(Icons.email)),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'About Order',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.delivery_dining,
                    size: 30,
                    color: Color(0xff374957),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Delivery',
                    style: TextStyle(fontSize: 20, color: Color(0xff696969)),
                  ),
                  SizedBox(
                    width: 65.w,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Select Method',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff696969),
                  ),
                ],
              ),
              Divider(
                color: Color(0xffCCCCCC),
                height: 10.h,
                thickness: 2,
                indent: 5,
                endIndent: 10,
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.payment_rounded,
                    size: 30,
                    color: Color(0xff374957),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Payment Method',
                    style: TextStyle(fontSize: 20, color: Color(0xff696969)),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff696969),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(
                color: Color(0xffCCCCCC),
                height: 10,
                thickness: 2,
                indent: 5,
                endIndent: 10,
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.payment_rounded,
                    size: 30,
                    color: Color(0xff374957),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Total Cost',
                    style: TextStyle(fontSize: 20, color: Color(0xff696969)),
                  ),
                  SizedBox(
                    width: 98,
                  ),
                  Text('190.00 Rs',
                      style: TextStyle(fontSize: 20, color: KTextColor)),
                  // SizedBox(
                  //   width: 13,
                  // ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff696969),
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              CustomButton(
                text: 'Confirm Order',
                buttonColour: Color(0xff82CD47),
                onpressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Payment()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderTextField extends StatelessWidget {
  String hintText;
  Icon icons;
  String Tbutton;

  OrderTextField(this.hintText, this.Tbutton, this.icons);
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: false,
      onChanged: (value) {},
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: icons,
        suffix: TextButton(
          onPressed: () {},
          child: Text(
            Tbutton,
            style: TextStyle(color: KTextColor, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
