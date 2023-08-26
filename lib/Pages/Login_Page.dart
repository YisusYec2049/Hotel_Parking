import 'package:flutter/material.dart';
import 'package:hotel_parking/Pages/Admin_Page.dart';
//import 'package:path/path.dart' as path;

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/background.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                name(),
                const SizedBox(
                  height: 20,
                ),
                campoUser(),
                campoPassword(),
                const SizedBox(
                  height: 20,
                ),
                entered_Button(
                  context,
                )
              ],
            ))),
      ),
    );
  }

  Widget name() {
    return const Text(
      'Sign in',
      style: TextStyle(
        color: Colors.white,
        fontSize: 35.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget campoUser() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          hintText: "User",
          fillColor: Colors.white.withOpacity(0.2),
          filled: true,
        ),
      ),
    );
  }

  Widget campoPassword() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          fillColor: Colors.white.withOpacity(0.2),
          filled: true,
        ),
      ),
    );
  }

  entered_Button(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 194, 49, 20).withOpacity(0.3)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Admin()));
      },
      child: const Text(
        'Enter',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
