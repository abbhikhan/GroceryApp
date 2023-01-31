// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/constants.dart';

class SearchItem extends StatefulWidget {
  @override
  State<SearchItem> createState() => _SearchItemState();
}

class _SearchItemState extends State<SearchItem> {
  // String? _searchQuery;
  // List<String> _searchResults = [];
  // int _selectedIndex = 0;
  bool? favoriteicon = false;
  // SearchProvider? searchProvider = SearchProvider();
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

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
          children: <Widget>[
            TextField(
              obscureText: false,
              onChanged: (value) {},
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Food and Fruits',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Things you can search For....',
                    style: TextStyle(fontWeight: FontWeight.w200, fontSize: 18),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Foods and Fruits',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'Best offers',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Clear History',
                            style: TextStyle(color: KTextColor),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
