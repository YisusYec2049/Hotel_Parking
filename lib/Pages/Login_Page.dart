import 'package:flutter/material.dart';
import 'package:hotel_parking/Pages/Admin_Page.dart';
import 'package:hotel_parking/Pages/Renter_Pager.dart';
import 'package:hotel_parking/Pages/Vigilant_Page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final user = TextEditingController();
  final password = TextEditingController();

  String u = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/background.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
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
        controller: user,
        decoration: InputDecoration(
            hintText: "User",
            fillColor: Colors.white.withOpacity(0.2),
            filled: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(25.0))),
      ),
    );
  }

  Widget campoPassword() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      child: TextField(
        controller: password,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Password",
            fillColor: Colors.white.withOpacity(0.2),
            filled: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(25.0))),
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
        u = user.text;
        pass = password.text;

        if (u == 'admin' && pass == "123") {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Admin()));
        } else if (u == 'vigilant' && pass == "321") {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Vigilant()));
        } else if (u == 'renter' && pass == "213") {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Renter()));
        } else {
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
                      Icons.dangerous,
                      color: Colors.red,
                      size: 40.0, // Ajusta el tamaño del icono
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "Incorrect data entered, please correct the data and try again.",
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
            ),
          );
        }
      },
      child: const Text(
        'Enter',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
