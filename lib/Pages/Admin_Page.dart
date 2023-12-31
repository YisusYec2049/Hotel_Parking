import 'package:flutter/material.dart';
import 'package:hotel_parking/Widgets/Appbar_Custom_Widget.dart';
import 'package:hotel_parking/Widgets/IconBottoms.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});
  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          )),
        ),
        const SafeArea(
          child: Stack(
            children: [
              AppBarCustomWidget(),
              Scan_Admin_Widget(),
              Add_Bottom_Widget(),
              ReturnLogin_Bottom_Widget(),
            ],
          ),
        ),
      ],
    );
  }
}
