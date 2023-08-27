import 'package:flutter/material.dart';
import 'package:hotel_parking/Logic/Cars.dart';
import 'package:hotel_parking/Widgets/IconBottoms.dart';

class Vigilant_Scan extends StatefulWidget {
  const Vigilant_Scan({super.key});
  @override
  State<Vigilant_Scan> createState() => _Vigilant_Scan();
}

class _Vigilant_Scan extends State<Vigilant_Scan> {
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
            ReturnVigilant_Bottom_Widget(),
            Ok_Scan(),
          ],
        ))
      ],
    );
  }
}
