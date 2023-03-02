import 'package:flutter/material.dart';

class RotateContainer extends StatelessWidget {
  final String name;
  const RotateContainer({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: -1,
      child: Text(name,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
    );
  }
}
