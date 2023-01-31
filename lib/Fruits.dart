// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/Custom_button.dart';
import 'package:grocery/Home.dart';
import 'package:grocery/Search.dart';
import 'package:grocery/Signup/SignUp.dart';
import 'package:grocery/constants.dart';
import 'package:grocery/core/home_provider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grocery/myCart.dart';
import 'package:grocery/profile.dart';

class Fruits extends StatefulWidget {
  const Fruits({super.key});

  @override
  State<Fruits> createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  int weight = 1;
  int _selectedIndex = 0;
  bool? favoriteicon = false;
  HomeProvider? homeProvider = HomeProvider();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,

        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.favorite_outline_outlined,
              color: Colors.black,
            ),
          ),
        ],

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
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Center(
                child: Image.asset(
                  'assets/images/aple.png',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Apple',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            weight--;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Color(0xffAEDC81),
                          radius: max(14, 14),
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(weight.toString()),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Kg',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            weight++;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Color(0xffAEDC81),
                          radius: max(14, 14),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Fruits',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  Text(
                    '4.5',
                    style:
                        TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  RatingBar.builder(
                    initialRating: 1,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Text(
                    '(90 reviews)',
                    style: TextStyle(
                      color: Color(0xff868889),
                    ),
                  ),
                ],
              ),
              Text(
                '180RS',
                style: TextStyle(color: KTextColor, fontSize: 15),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Descriptions',
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Apple Mountain works as a seller for many apple growers of apple. apple are easy to spot in your produce aisle. They are just like regular apple, but they will usually have a few more scars on  ReadMore',
                style: TextStyle(
                  color: Color(0xffD1D2D3),
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffEBEBEB),
                                offset: Offset(1, 0),
                                spreadRadius: 1,
                              ),
                              BoxShadow(
                                color: Color(0xffEBEBEB),
                                offset: Offset(0, 1),
                                spreadRadius: 1,
                              ),
                            ]),
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: Color(0xff82CD47),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyCart()));
                                },
                                child: Text(
                                  'Add to cart',
                                  style: TextStyle(
                                    color: Color(0xff82CD47),
                                    fontSize: 17.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: KTextColor,
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  'Buy Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Icon(Icons.home)),
              label: 'Home',
              backgroundColor: knavcolor),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: 'Favourite',
              backgroundColor: knavcolor),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout),
            label: 'Shopping Cart',
            backgroundColor: knavcolor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
            backgroundColor: knavcolor,
          ),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Icon(Icons.person_pin),
              ),
              label: 'Profile',
              backgroundColor: knavcolor),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff585858),
        onTap: _onItemTapped,
        // backgroundColor: Color(0xff6CC51D),
      ),
    );
  }
}
