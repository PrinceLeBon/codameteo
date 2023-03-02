import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String number;
  final String description;
  const Details({Key? key, required this.number, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(children: [
          Text("$numberº",
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          Text(description,
              style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
        ]));
  }
}
