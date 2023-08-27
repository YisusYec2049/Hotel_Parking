import 'package:flutter/material.dart';

class Car_List extends StatefulWidget {
  const Car_List({super.key});

  @override
  State<Car_List> createState() => _Car_ListState();
}

class _Car_ListState extends State<Car_List> {
  final List<Car> _cars = [
    Car("Audi", "302", "XMG-341", "assets/audi.jpg"),
    Car("BMW", "202", "DMD-342", "assets/bmw.jpg"),
    Car("Chevrolet", "102", "SDS-341", "assets/chevrolet.jpg"),
    Car("Ford", "106", "XFG-341", "assets/ford.jpg"),
    Car("Mazda", "103", "QMG-341", "assets/mazda.jpg"),
    Car("Renault", "402", "WMG-341", "assets/renault.jpg"),
    Car("Toyota", "602", "XGG-341", "assets/toyota.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cars.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Image.asset(_cars[index].image),
            const SizedBox(
              height: 16.0,
            ),
          ],
        );
      },
    );
  }
}

class Car {
  String name;
  String apto;
  String plate;
  String image;

  Car(this.name, this.apto, this.plate, this.image);
}
