import 'package:flutter/material.dart';
import 'package:hotel_parking/Pages/Admin_Add.dart';
import 'package:hotel_parking/Pages/Admin_Page.dart';
import 'package:hotel_parking/Pages/Admin_Scan.dart';
import 'package:hotel_parking/Pages/Login_Page.dart';
import 'package:hotel_parking/Pages/Vigilan_Scan.dart';
import 'package:hotel_parking/Pages/Vigilant_Page.dart';

class Scan_Admin_Widget extends StatefulWidget {
  const Scan_Admin_Widget({Key? key}) : super(key: key);

  @override
  State<Scan_Admin_Widget> createState() => _Scan_Admin_WidgetState();
}

class _Scan_Admin_WidgetState extends State<Scan_Admin_Widget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.0,
      right: 25.0,
      child: Transform.scale(
        scale: 1.8,
        child: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Admin_Scan()));
          },
          icon: const Icon(Icons.camera_alt_outlined),
        ),
      ),
    );
  }
}

class Scan_Vigilant_Widget extends StatefulWidget {
  const Scan_Vigilant_Widget({Key? key}) : super(key: key);

  @override
  State<Scan_Vigilant_Widget> createState() => _Scan_Vigilant_WidgetState();
}

class _Scan_Vigilant_WidgetState extends State<Scan_Vigilant_Widget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.0,
      right: 25.0,
      child: Transform.scale(
        scale: 1.8,
        child: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Vigilant_Scan()));
          },
          icon: const Icon(Icons.camera_alt_outlined),
        ),
      ),
    );
  }
}

class Add_Bottom_Widget extends StatefulWidget {
  const Add_Bottom_Widget({Key? key}) : super(key: key);

  @override
  State<Add_Bottom_Widget> createState() => _Add_Bottom_Widget();
}

class _Add_Bottom_Widget extends State<Add_Bottom_Widget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.0,
      left: 25.0,
      child: Transform.scale(
        scale: 1.8,
        child: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Admin_Add()));
          },
          icon: const Icon(Icons.add_a_photo_outlined),
        ),
      ),
    );
  }
}

class ReturnLogin_Bottom_Widget extends StatelessWidget {
  const ReturnLogin_Bottom_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16.0,
      left: 25,
      child: Transform.scale(
        scale: 1.8,
        child: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Login()));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
    );
  }
}

class ReturnAdmin_Bottom_Widget extends StatefulWidget {
  const ReturnAdmin_Bottom_Widget({Key? key}) : super(key: key);

  @override
  State<ReturnAdmin_Bottom_Widget> createState() =>
      _ReturnAdmin_Bottom_Widget();
}

class _ReturnAdmin_Bottom_Widget extends State<ReturnAdmin_Bottom_Widget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16.0,
      left: 25,
      child: Transform.scale(
        scale: 1.8,
        child: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Admin()));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
    );
  }
}

class ReturnVigilant_Bottom_Widget extends StatefulWidget {
  const ReturnVigilant_Bottom_Widget({Key? key}) : super(key: key);

  @override
  State<ReturnVigilant_Bottom_Widget> createState() =>
      _ReturnVigilant_Bottom_Widget();
}

class _ReturnVigilant_Bottom_Widget
    extends State<ReturnVigilant_Bottom_Widget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16.0,
      left: 25,
      child: Transform.scale(
        scale: 1.8,
        child: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Vigilant()));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
    );
  }
}

class Ok extends StatefulWidget {
  const Ok({Key? key}) : super(key: key);

  @override
  State<Ok> createState() => _Ok();
}

class _Ok extends State<Ok> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 500,
      bottom: 20.0,
      left: 25,
      right: 25,
      child: Transform.scale(
        scale: 1.8,
        child: IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      content: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: Icon(
                              Icons.check_circle,
                              color: Color.fromARGB(255, 73, 227, 17),
                              size: 40.0,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "The scanning is complete, welcome Mr. Nobody.",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      actions: [
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Ok"),
                          ),
                        ),
                      ],
                    ));
          },
          icon: const Icon(Icons.check_circle_outline),
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}

class Ok_Scan extends StatefulWidget {
  const Ok_Scan({Key? key}) : super(key: key);

  @override
  State<Ok_Scan> createState() => _Ok_Scan();
}

class _Ok_Scan extends State<Ok_Scan> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.3,
      right: 15,
      child: Transform.scale(
        scale: 1.8,
        child: IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      content: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: Icon(
                              Icons.check_circle,
                              color: Color.fromARGB(255, 73, 227, 17),
                              size: 40.0,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "The scanning is complete, welcome Mr. Nobody.",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      actions: [
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Ok"),
                          ),
                        ),
                      ],
                    ));
          },
          icon: const Icon(Icons.camera),
        ),
      ),
    );
  }
}
