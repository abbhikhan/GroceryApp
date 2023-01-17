// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:grocery/Catagories.dart';
import 'package:grocery/constants.dart';
import 'package:grocery/core/home_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    String Value;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          CircleAvatar(backgroundImage: AssetImage('assets/images/abss.png')),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Text(
              'Hello cheque!',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'What are you looking for ?',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
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
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Image.asset(
                'assets/images/offers.png',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Catagories',
              style: TextStyle(
                  color: kTbalck, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Catagories(name: 'Fruits', image: 'assets/images/fruits.png'),
                  Catagories(name: 'Meat', image: 'assets/images/meet.png'),
                  Catagories(name: 'Rice', image: 'assets/images/rice.png'),
                  Catagories(name: 'Meals', image: 'assets/images/meals.png'),
                  Catagories(name: 'bakery', image: 'assets/images/bakers.png'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Featured Products',
              style: TextStyle(
                  color: kTbalck, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
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
                              style: TextStyle(color: Colors.red, fontSize: 12),
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
                                favoriteicon == true
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
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff6CC51D),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${homeProvider?.data[index].name}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${homeProvider?.data[index].weight}",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff868889),
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: List.generate(
                                    150 ~/ 10,
                                    (index) => Expanded(
                                          child: Container(
                                            color: index % 2 == 0
                                                ? Colors.transparent
                                                : Color(0xffB7DD92),
                                            height: 2,
                                          ),
                                        )),
                              ),
                            ],
                          ),
                        ),
                        footer: GridTileBar(
                          leading: Text('        '),
                          subtitle: Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Color(0xff689C36),
                                fontSize: 16,
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
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
              icon: Icon(Icons.person_pin),
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
