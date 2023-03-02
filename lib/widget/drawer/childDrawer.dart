import 'dart:convert';

import 'package:codameteo/homepage.dart';
import 'package:codameteo/models/city.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../components/globals.dart';
import 'package:geocoding/geocoding.dart';
import 'package:http/http.dart' as http;

class ChildDrawer extends StatefulWidget {
  final IconData icon;
  final String label;
  final double size;
  final int index;

  const ChildDrawer(
      {Key? key,
      required this.icon,
      required this.label,
      required this.size,
      required this.index})
      : super(key: key);

  @override
  State<ChildDrawer> createState() => _ChildDrawerState();
}

class _ChildDrawerState extends State<ChildDrawer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: getWeatherData,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.label,
            style: TextStyle(fontSize: widget.size),
          ),
          Container(
            width: 10,
          ),
          IconButton(
              onPressed: () {
                final cityBox = Hive.box("City_Database");
                setState(() {
                  cityList.removeAt(widget.index);
                  cityBox.put('cityList', cityList);
                });
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const MyHomePage()));
              },
              icon: Icon(widget.icon)),
        ],
      ),
    );
  }

  Future<void> getWeatherData() async {
    List<Location> locations = await locationFromAddress(widget.label);
    var response = await http
        .get(Uri.https('api.openweathermap.org', '/data/2.5/weather', {
      'lat': "${locations.first.latitude}",
      'lon': "${locations.first.longitude}",
      'appid': "",
      'units': "metric"
    }));
    var jsonData = jsonDecode(response.body);
    if (response.statusCode == 200) {
      setState(() {
        actualCity = City_Model.fromJson(jsonData);
      });
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const MyHomePage()));
      print(actualCity.name);
    } else {
      print(response.reasonPhrase);
    }
  }
}
