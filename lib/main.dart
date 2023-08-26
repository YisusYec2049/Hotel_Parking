import 'package:flutter/material.dart';
//import 'package:hotel_parking/Pages/Login_Page.dart';
//import 'package:hotel_parking/Pages/Admin_Page.dart';
import 'package:hotel_parking/Pages/Login_Page.dart';
//import 'package:hotel_parking/Widgets/Appbar_Custom_Widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Login(),
    );
    // home: Scaffold(
    //   appBar: AppBarCustomWidget(),
    //   //body: SafeArea(child: Admin())),
    // ));
  }
}
