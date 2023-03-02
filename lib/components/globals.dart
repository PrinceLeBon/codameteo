import 'package:codameteo/models/city.dart';

City_Model actualCity = City_Model(
    name: "Cotonou",
    main: "main",
    description: "description",
    icon: "50n",
    temp: 0,
    pressure: 0,
    humidity: 0,
    temp_min: 0,
    temp_max: 0);

List<String> cityList = [];

final Map<String, String> weatherIcons = {
  '01d': '01d.jpg',
  '01n': '01n.jpg',
  '02d': '02d.jpg',
  '02n': '02n.jpg',
  '03d': '03d.jpg',
  '03n': '03n.jpg',
  '04d': '04d.jpg',
  '04n': '04n.jpg',
  '09d': '09d.jpg',
  '09n': '09n.jpg',
  '10d': '10d.jpg',
  '10n': '10n.jpg',
  '11d': '11d.jpg',
  '11n': '11n.jpg',
  '13d': '13d.jpg',
  '13n': '13n.jpg',
  '50d': '50d.jpg',
  '50n': '50n.jpg',
};
