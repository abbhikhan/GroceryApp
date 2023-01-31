// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/Home.dart';
import 'package:grocery/constants.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 0;
  bool? favoriteicon = false;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    int itemCount = 0;
    String Value;
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 130.h,
                      width: 130.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/abss.png')),
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(80),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 100,
                        left: 100,
                        child:
                            Container(child: Icon(Icons.camera_alt_rounded))),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                Text(
                  'Abbas Khan',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'abas@gmail.com',
                  style: TextStyle(
                    fontSize: 17.sp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Settings',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(Icons.person, size: 30, color: Colors.black),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'User Information',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 120.w,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(
                  Icons.shopping_cart_checkout,
                  size: 30.sp,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'My Cart',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(
                  width: 205.w,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(
                  Icons.favorite_border,
                  size: 30.sp,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'My Favourites',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 144.w,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(
                  Icons.notifications_none_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 157.w,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(
                  Icons.headphones_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Help',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 230.w,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(
                  Icons.logout,
                  size: 30,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 20.h,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 200.w,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
              ],
            ),
          ),
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
