// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

class WeatherData {

  WeatherData(
      {this.coord,
      this.weather,
      this.base,
      this.main,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod,});

  WeatherData.fromJson(Map<String, dynamic> json) {
    coord = json['coord'] != null
        ? Coord.fromJson(json['coord'] as Map<String, dynamic>)
        : null;
    if (json['weather'] != null) {
      weather = <Weather>[];
      for (final v in json['weather'] as List) {
        weather!.add(Weather.fromJson(v as Map<String, dynamic>));
      }
    }
    base = json['base'] as String;
    main = json['main'] != null
        ? Main.fromJson(json['main'] as Map<String, dynamic>)
        : null;
    visibility = json['visibility'] as int?;
    wind = json['wind'] != null
        ? Wind.fromJson(json['wind'] as Map<String, dynamic>)
        : null;
    clouds = json['clouds'] != null
        ? Clouds.fromJson(json['clouds'] as Map<String, dynamic>)
        : null;
    dt = json['dt'] as int?;
    sys = json['sys'] != null
        ? Sys.fromJson(json['sys'] as Map<String, dynamic>)
        : null;
    timezone = json['timezone'] as int?;
    id = json['id'] as int?;
    name = json['name'] as String;
    cod = json['cod'] as int?;
  }
  Coord? coord;
  List<Weather>? weather;
  String? base;
  Main? main;
  int? visibility;
  Wind? wind;
  Clouds? clouds;
  int? dt;
  Sys? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (coord != null) {
      data['coord'] = coord!.toJson();
    }
    if (weather != null) {
      data['weather'] = weather!.map((v) => v.toJson()).toList();
    }
    data['base'] = base;
    if (main != null) {
      data['main'] = main!.toJson();
    }
    data['visibility'] = visibility;
    if (wind != null) {
      data['wind'] = wind!.toJson();
    }
    if (clouds != null) {
      data['clouds'] = clouds!.toJson();
    }
    data['dt'] = dt;
    if (sys != null) {
      data['sys'] = sys!.toJson();
    }
    data['timezone'] = timezone;
    data['id'] = id;
    data['name'] = name;
    data['cod'] = cod;
    return data;
  }
}

class Coord {

  Coord({this.lon, this.lat});

  Coord.fromJson(Map<String, dynamic> json) {
    lon = json['lon'] as num;
    lat = json['lat'] as num;
  }
  num? lon;
  num? lat;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['lon'] = lon;
    data['lat'] = lat;
    return data;
  }
}

class Weather {

  Weather({this.id, this.main, this.description, this.icon});

  Weather.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    main = json['main'] as String;
    description = json['description'] as String;
    icon = json['icon'] as String;
  }
  int? id;
  String? main;
  String? description;
  String? icon;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['main'] = main;
    data['description'] = description;
    data['icon'] = icon;
    return data;
  }
}

class Main {

  Main({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
    this.seaLevel,
    this.grndLevel,
  });

  Main.fromJson(Map<String, dynamic> json) {
    temp = json['temp'] as double?;
    feelsLike = json['feels_like'] as double?;
    tempMin = json['temp_min'] as double?;
    tempMax = json['temp_max'] as double?;
    pressure = json['pressure'] as int?;
  }
  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;
  int? seaLevel;
  int? grndLevel;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['temp'] = temp;
    data['feels_like'] = feelsLike;
    data['temp_min'] = tempMin;
    data['temp_max'] = tempMax;
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    data['sea_level'] = seaLevel;
    data['grnd_level'] = grndLevel;
    return data;
  }
}

class Wind {

  Wind({this.speed, this.deg, this.gust});

  Wind.fromJson(Map<String, dynamic> json) {
    speed = json['speed'] as double?;
    deg = json['deg'] as int?;
  }
  double? speed;
  int? deg;
  double? gust;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['speed'] = speed;
    data['deg'] = deg;
    data['gust'] = gust;
    return data;
  }
}

class Clouds {

  Clouds({this.all});

  Clouds.fromJson(Map<String, dynamic> json) {
    all = json['all'] as int?;
  }
  int? all;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['all'] = all;
    return data;
  }
}

class Sys {

  Sys({this.type, this.id, this.country, this.sunrise, this.sunset});

  Sys.fromJson(Map<String, dynamic> json) {
    type = json['type'] as int?;
    id = json['id'] as int?;
    country = json['country'] as String?;
    sunrise = json['sunrise'] as int?;
    sunset = json['sunset'] as int?;
  }
  int? type;
  int? id;
  String? country;
  int? sunrise;
  int? sunset;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['id'] = id;
    data['country'] = country;
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    return data;
  }
}
