// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/Home.dart';
import 'package:grocery/SearchItems.dart';
import 'package:grocery/constants.dart';
import 'package:grocery/profile.dart';

import 'core/SearchProvider.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int _selectedIndex = 0;
  bool? favoriteicon = false;
  SearchProvider? searchProvider = SearchProvider();
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
        centerTitle: true,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            TextField(
              obscureText: false,
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Serach Keywords..',
                prefixIcon: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchItem()));
                  },
                  child: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: 45.h,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: searchProvider?.data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: (1 / 1.3),
                  crossAxisCount: 2,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: ((context, index) => Container(
                      height: 500.h,
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
                          ),
                          subtitle: Text(''),
                        ),
                        // ignore: sort_child_properties_last
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Image.asset(
                                "${searchProvider?.data[index].image}",
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                "${searchProvider?.data[index].name}",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 14.h,
                              ),
                              Text(
                                "${searchProvider?.data[index].price}",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff6CC51D),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "${searchProvider?.data[index].weight}",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff868889),
                                ),
                              ),
                              SizedBox(height: 8.h),
                            ],
                          ),
                        ),
                        footer: GridTileBar(
                          leading: Text('                        '),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: Color(0xff6CC51D),
                            ),
                          ),
                        ),
                      ),
                    )),
              ),
            )
          ],
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
