import 'package:flutter/material.dart';

class AppBarCustomWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarCustomWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(200);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 200.0,
      left: 0.0,
      right: 0.0,
      child: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromARGB(41, 192, 71, 19)),
            child: Center(
              child: const Text(
                'Buenos días, Usuario.',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 25.0,
                    decoration: TextDecoration.none),
              ),
            )),
      ),
    );
  }
}
