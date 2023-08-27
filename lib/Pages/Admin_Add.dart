import 'package:flutter/material.dart';
import 'package:hotel_parking/Widgets/IconBottoms.dart';

class Admin_Add extends StatefulWidget {
  const Admin_Add({super.key});
  @override
  State<Admin_Add> createState() => _Admin_Add();
}

class _Admin_Add extends State<Admin_Add> {
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
            children: [ReturnAdmin_Bottom_Widget(), Add_Space(), Ok()],
          ))
        ],
      ),
    );
  }
}

class Add_Space extends StatefulWidget {
  const Add_Space({super.key});

  @override
  State<Add_Space> createState() => _Add_SpaceState();
}

class _Add_SpaceState extends State<Add_Space> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [form_user()],
    ));
  }

  Widget form_user() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 160),
      child: Column(
        children: [
          const Text(
            'Enter full name',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "",
                fillColor: Colors.white.withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0))),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Enter document number',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "",
                fillColor: Colors.white.withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0))),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Enter apartment number',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "",
                fillColor: Colors.white.withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0))),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Enter license plate number',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "",
                fillColor: Colors.white.withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0))),
          ),
        ],
      ),
    );
  }
}
