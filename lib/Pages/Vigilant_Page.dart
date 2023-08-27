import 'package:flutter/material.dart';
import 'package:hotel_parking/Widgets/Appbar_Custom_Widget.dart';
import 'package:hotel_parking/Widgets/IconBottoms.dart';

class Vigilant extends StatefulWidget {
  const Vigilant({super.key});
  @override
  State<Vigilant> createState() => _VigilantState();
}

class _VigilantState extends State<Vigilant> {
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
              Scan_Vigilant_Widget(),
              ReturnLogin_Bottom_Widget(),
            ],
          ),
        ),
      ],
    );
  }
}
