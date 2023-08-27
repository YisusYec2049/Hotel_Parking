import 'package:flutter/material.dart';
import 'package:hotel_parking/Logic/Cars.dart';
import 'package:hotel_parking/Widgets/IconBottoms.dart';

class Admin_Scan extends StatefulWidget {
  const Admin_Scan({super.key});
  @override
  State<Admin_Scan> createState() => _Admin_Scan();
}

class _Admin_Scan extends State<Admin_Scan> {
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
            Car_List(),
            Add_Bottom_Widget(),
            ReturnAdmin_Bottom_Widget()
          ],
        ))
      ],
    );
  }
}
