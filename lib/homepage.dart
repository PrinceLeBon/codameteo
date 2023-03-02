import 'package:codameteo/components/globals.dart';
import 'package:codameteo/widget/drawer/custom_drawer.dart';
import 'package:codameteo/widget/homepage/first_part.dart';
import 'package:codameteo/widget/homepage/second_part.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/${weatherIcons[actualCity.icon]}",
                ),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [FirstPart(), SecondPart()],
          ),
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
