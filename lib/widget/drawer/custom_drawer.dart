import 'package:codameteo/components/listOfCity.dart';
import 'package:codameteo/widget/drawer/headDrawer.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../components/globals.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getListOfCity();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueAccent,
      child: Container(
        margin: MediaQuery.of(context).padding,
        child: Padding(
          padding: const EdgeInsets.only(right: 30, left: 20, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeadOfDrawer(),
              Container(
                height: 3,
                color: Colors.black,
              ),
              const ListOfCity()
            ],
          ),
        ),
      ),
    );
  }

  void getListOfCity() {
    final cityBox = Hive.box("City_Database");
    cityList =
        List.castFrom(cityBox.get('cityList', defaultValue: [])).cast<String>();
  }
}
