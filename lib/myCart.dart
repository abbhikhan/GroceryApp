// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/Custom_button.dart';
import 'package:grocery/Home.dart';
import 'package:grocery/Signin/SignIn.dart';

import 'package:grocery/constants.dart';
import 'package:grocery/core/cartProvider.dart';
import 'package:grocery/core/cartprov.dart';
import 'package:grocery/orderConfirmation.dart';
import 'package:grocery/profile.dart';
import 'package:provider/provider.dart';

class MyCart extends StatefulWidget {
  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int _selectedIndex = 0;
  bool? favoriteicon = false;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(
      context,
    );

    int itemCount = 0;
    String Value;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'MyCart',
          style: TextStyle(
              fontSize: 25.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold),
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
            height: 30.h,
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(12),
              itemCount: cartProvider.dataa.length,
              itemBuilder: ((context, index) => Container(
                    height: 100.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Color.fromARGB(0, 227, 202, 202)),

                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffEBEBEB),
                            offset: Offset(0, 1),
                            blurRadius: 20,
                            // spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.transparent,
                            offset: Offset(0, 1),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                        ]),
                    child: ListTile(
                      leading: Image.asset(
                        "${cartProvider.dataa[index].image}",
                      ),
                      title: Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "${cartProvider.dataa[index].name}",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${cartProvider.dataa[index].weight}",
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff868889),
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            "${cartProvider.dataa[index].price}",
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff6CC51D),
                            ),
                          ),
                        ],
                      ),
                      trailing: SizedBox(
                        height: 70.h,
                        width: 70.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  cartProvider
                                      .subtract(cartProvider.dataa[index]);
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Color(0xffAEDC81),
                                radius: max(12, 12),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text("${cartProvider.dataa[index].itemCount}"),
                            InkWell(
                              onTap: () {
                                cartProvider.add(cartProvider.dataa[index]);
                              },
                              child: CircleAvatar(
                                backgroundColor: Color(0xffAEDC81),
                                radius: max(12, 12),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          CustomButton(
            text: 'Checkout',
            buttonColour: Color(0xff82CD47),
            onpressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Orderconformation()));
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 7,
          )
        ],
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
                  child: Icon(Icons.person_pin)),
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
