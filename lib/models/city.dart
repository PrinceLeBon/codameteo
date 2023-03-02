class City_Model {
  late String name;
  late String main;
  late String description;
  late String icon;
  late double temp;
  late var pressure;
  late var humidity;
  late var temp_min;
  late var temp_max;

  City_Model(
      {required this.name,
      required this.main,
      required this.description,
      required this.icon,
      required this.temp,
      required this.pressure,
      required this.humidity,
      required this.temp_min,
      required this.temp_max});

  static City_Model fromJson(Map json) {
    List weather = json['weather'];
    Map mapWeather = weather[0];
    Map mapMain = json['main'];
    return City_Model(
        name: json['name'],
        main: mapWeather['main'],
        description: mapWeather['description'],
        icon: mapWeather['icon'],
        temp: mapMain['temp'],
        pressure: mapMain['pressure'],
        humidity: mapMain['humidity'],
        temp_min: mapMain['temp_min'],
        temp_max: mapMain['temp_max']);
  }
}
