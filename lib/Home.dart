// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/Catagories.dart';
import 'package:grocery/Fruits.dart';
import 'package:grocery/Search.dart';
import 'package:grocery/constants.dart';
import 'package:grocery/core/home_provider.dart';
import 'package:grocery/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

bool favoriteicon = false;

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  // bool favoriteicon = false;
  HomeProvider? homeProvider = HomeProvider();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String Value;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/abss.png'))),
        ],
        title: Text(
          'Home',
          style: TextStyle(color: kTbalck, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.menu,
            color: kTbalck,
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
              Text(
                'Hello cheque!',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'What are you looking for ?',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                // textAlign: TextAlign.center,
                obscureText: false,
                onChanged: (value) {
                  Value = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  suffixIcon: Icon(
                    Icons.format_align_left_rounded,
                    color: KTextColor,
                  ),
                  hintText: 'Serach Keywords..',
                  prefixIcon: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Search()));
                      },
                      child: Icon(Icons.search)),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Center(
                child: Image.asset(
                  'assets/images/offers.png',
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Catagories',
                style: TextStyle(
                    color: kTbalck, fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                height: 100.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Catagories(
                        name: 'Fruits',
                        image: 'assets/images/fruits.png',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fruits()));
                        }),
                    Catagories(name: 'Meat', image: 'assets/images/meet.png'),
                    Catagories(name: 'Rice', image: 'assets/images/rice.png'),
                    Catagories(name: 'Meals', image: 'assets/images/meals.png'),
                    Catagories(
                        name: 'bakery', image: 'assets/images/bakers.png'),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Featured Products',
                style: TextStyle(
                    color: kTbalck, fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 200.h,
                child: GridView.builder(
                  itemCount: homeProvider?.data.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (1 / 1.3),
                    crossAxisCount: 2,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: ((context, index) => Container(
                        height: 500,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffEBEBEB),
                                offset: Offset(1, 0),
                                //   blurRadius: 20,
                                spreadRadius: 1,
                              ),
                              BoxShadow(
                                color: Color(0xffEBEBEB),
                                offset: Offset(0, 1),
                                //   blurRadius: 20,
                                spreadRadius: 1,
                              ),
                            ]),
                        child: GridTile(
                          header: GridTileBar(
                            leading: Container(
                              color: Color(0xffFEE4E4),
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                "${homeProvider?.data[index].discount}",
                                style: TextStyle(
                                    color: Colors.red, fontSize: 12.sp),
                              ),
                            ),
                            subtitle: Text(''),
                            trailing: InkWell(
                              onTap: () {
                                setState(() {
                                  favoriteicon != favoriteicon;
                                });
                              },
                              child: Icon(
                                  favoriteicon
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Color(0xff959798)),
                            ),
                          ),
                          // ignore: sort_child_properties_last
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Image.asset(
                                  "${homeProvider?.data[index].image}",
                                ),
                                Text(
                                  "${homeProvider?.data[index].price}",
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff6CC51D),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  "${homeProvider?.data[index].name}",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  "${homeProvider?.data[index].weight}",
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff868889),
                                  ),
                                ),
                                SizedBox(height: 1.h),
                                Row(
                                  children: List.generate(
                                      150 ~/ 10,
                                      (index) => Expanded(
                                            child: Container(
                                              color: index % 2 == 0
                                                  ? Colors.transparent
                                                  : Color(0xffB7DD92),
                                              height: 2.h,
                                            ),
                                          )),
                                ),
                              ],
                            ),
                          ),

                          footer: GridTileBar(
                            leading: Text('        '),
                            title: Text(
                              'Add to cart',
                              style: TextStyle(
                                  color: Color(0xff689C36),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w200),
                            ),
                          ),
                        ),
                      )),
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
