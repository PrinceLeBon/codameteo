import 'package:codameteo/components/globals.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:geocoding/geocoding.dart' as _geocoding;
import 'homepage.dart';
import 'package:location/location.dart' as _location;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  _location.Location location = _location.Location();

  bool serviceEnabled;
  _location.PermissionStatus permissionGranted;
  _location.LocationData locationData;

  serviceEnabled = await location.serviceEnabled();
  if (!serviceEnabled) {
    serviceEnabled = await location.requestService();
    if (!serviceEnabled) {
      return;
    }
  }

  permissionGranted = await location.hasPermission();
  if (permissionGranted == _location.PermissionStatus.denied) {
    permissionGranted = await location.requestPermission();
    if (permissionGranted != _location.PermissionStatus.granted) {
      return;
    }
  }

  try {
    locationData = await location.getLocation();
    final latitude = locationData.latitude;
    final longitude = locationData.longitude;
    List<_geocoding.Placemark> placemarks =
        await _geocoding.placemarkFromCoordinates(latitude!, longitude!);
    await Hive.initFlutter();
    await Hive.openBox("City_Database");
    actualCity.name = placemarks.first.locality!;
    runApp(const MyApp());
  } on PlatformException catch (e) {
    if (kDebugMode) {
      print("Erreur: $e");
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
