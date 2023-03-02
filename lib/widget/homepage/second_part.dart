import 'package:flutter/material.dart';
import '../../components/globals.dart';
import 'details.dart';

class SecondPart extends StatelessWidget {
  const SecondPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ((MediaQuery.of(context).size.width) - 40),
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: Colors.white)),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 5, left: 20, right: 20),
        child: Row(children: [
          Details(
              number: actualCity.humidity.toString(), description: "Humidity"),
          Details(
              number: actualCity.pressure.toString(), description: "Pressure"),
          Details(
              number: actualCity.temp_min.toString(),
              description: "  Min.\nTemp"),
          Details(
              number: actualCity.temp_max.toString(),
              description: " Max.\nTemp"),
        ]),
      ),
    );
  }
}
