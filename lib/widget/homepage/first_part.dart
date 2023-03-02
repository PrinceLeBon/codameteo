import 'package:codameteo/widget/homepage/rotateContainer.dart';
import 'package:flutter/material.dart';
import '../../components/globals.dart';

class FirstPart extends StatelessWidget {
  const FirstPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: ((MediaQuery.of(context).size.width) - 40) / 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                actualCity.name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "${actualCity.temp.toInt()}º",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RotateContainer(name: actualCity.main),
            RotateContainer(name: actualCity.description),
          ],
        ),
      ],
    );
  }
}
