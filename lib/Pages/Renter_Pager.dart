import 'package:flutter/material.dart';
import 'package:hotel_parking/Pages/Admin_Add.dart';
import 'package:hotel_parking/Widgets/IconBottoms.dart';

class Renter extends StatefulWidget {
  const Renter({super.key});
  @override
  State<Renter> createState() => _RenterState();
}

class _RenterState extends State<Renter> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
            children: [ReturnLogin_Bottom_Widget(), Add_Space(), Ok()],
          ))
        ],
      ),
    );
  }
}
