// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:grocery/Custom_button.dart';
import 'package:grocery/confirmed.dart';
import 'package:grocery/constants.dart';
import 'package:grocery/main.dart';
import 'package:grocery/orderConfirmation.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Payment',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height / 7,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffEBEBEB),
                      offset: Offset(0, 1),
                      blurRadius: 20,
                      // spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 1),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ammount to Pay',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100,
                        ),
                        Text(
                          '150 Rs',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: KTextColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 100,
                    ),
                    Text(
                      'Detail',
                      style: TextStyle(fontSize: 18, color: KTextColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height / 7,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffEBEBEB),
                      offset: Offset(0, 1),
                      blurRadius: 20,
                      // spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 1),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 15,
                    ),
                    Icon(
                      Icons.payment,
                      size: 30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Master Card',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          '0000 0000 0000 0000',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Price',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff696969),
                  ),
                ),
                Text(
                  '190 Rs',
                  style: TextStyle(
                    fontSize: 20,
                    color: KTextColor,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Charges',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff696969),
                  ),
                ),
                Text(
                  '50 Rs',
                  style: TextStyle(
                    fontSize: 20,
                    color: KTextColor,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff696969),
                  ),
                ),
                Text(
                  '240 Rs',
                  style: TextStyle(
                    fontSize: 20,
                    color: KTextColor,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          CustomButton(
            text: 'Pay Now',
            buttonColour: Color(0xff82CD47),
            onpressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Confirmed()));
            },
          ),
        ],
      ),
    );
  }
}
