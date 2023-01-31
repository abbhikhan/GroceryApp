// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grocery/Fruits.dart';
import 'package:grocery/Home.dart';

import 'package:grocery/Splash_Screen.dart';
import 'package:grocery/core/cartProvider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/myCart.dart';
import 'package:grocery/profile.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return ChangeNotifierProvider(
              create: (context) => CartProvider(),
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                  textTheme:
                      Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
                ),
                home: SplachScreen(),
              ));
        });
  }
}

        
    
     
  





//  theme: ThemeData(
//             primarySwatch: Colors.blue,
//             textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
//           ),

