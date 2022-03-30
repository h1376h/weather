import '/models/temperature.dart';
import '/utils/functions.dart';

class Daily {
  Daily(Map<String, dynamic> jsonData) {
    Map<String, dynamic>? temp = jsonData['temp']?.cast<String, dynamic>();
    Map<String, dynamic>? tempFeelsLike =
        jsonData['feels_like']?.cast<String, dynamic>();
    Map<String, dynamic>? weather =
        jsonData['weather'][0]?.cast<String, dynamic>();

    _data = jsonData;
    _date = unpackDate(_data, 'dt');
    _sunrise = unpackDate(_data, 'sunrise');
    _sunset = unpackDate(_data, 'sunset');
    _moonset = unpackDate(_data, 'moonrise');
    _sunset = unpackDate(_data, 'moonset');
    _moonPhase = unpackDouble(_data, 'moon_phase');
    _tempMorn = unpackTemperature(temp, 'morn');
    _tempDay = unpackTemperature(temp, 'day');
    _tempEve = unpackTemperature(temp, 'eve');
    _tempNight = unpackTemperature(temp, 'night');
    _tempMin = unpackTemperature(temp, 'min');
    _tempMax = unpackTemperature(temp, 'max');
    _tempFeelsLikeMorn = unpackTemperature(tempFeelsLike, 'morn');
    _tempFeelsLikeDay = unpackTemperature(tempFeelsLike, 'day');
    _tempFeelsLikeEve = unpackTemperature(tempFeelsLike, 'eve');
    _tempFeelsLikeNight = unpackTemperature(tempFeelsLike, 'night');
    _pressure = unpackDouble(_data, 'pressure');
    _humidity = unpackDouble(_data, 'humidity');
    _dewPoint = unpackDouble(_data, 'dew_point');
    _windSpeed = unpackDouble(_data, 'wind_speed');
    _windGust = unpackDouble(_data, 'wind_gust');
    _windDegree = unpackDouble(_data, 'wind_deg');
    _clouds = unpackDouble(_data, 'clouds');
    _uvi = unpackDouble(_data, 'uvi');
    _pop = unpackDouble(_data, 'pop');
    _rain = unpackDouble(_data, 'rain');
    _snow = unpackDouble(_data, 'snow');
    _weatherConditionCode = unpackInt(weather, 'id');
    _weatherMain = unpackString(weather, 'main');
    _weatherDescription = unpackString(weather, 'description');
    _weatherIcon = unpackString(weather, 'icon');
  }

  Map<String, dynamic>? _data;
  DateTime? _date;
  DateTime? _sunrise;
  DateTime? _sunset;
  DateTime? _moonrise;
  DateTime? _moonset;
  double? _moonPhase;
  Temperature? _tempMorn;
  Temperature? _tempDay;
  Temperature? _tempEve;
  Temperature? _tempNight;
  Temperature? _tempMin;
  Temperature? _tempMax;
  Temperature? _tempFeelsLikeMorn;
  Temperature? _tempFeelsLikeDay;
  Temperature? _tempFeelsLikeEve;
  Temperature? _tempFeelsLikeNight;
  double? _pressure;
  double? _humidity;
  double? _dewPoint;
  double? _windSpeed;
  double? _windGust;
  double? _windDegree;
  double? _clouds;
  double? _uvi;
  double? _pop;
  double? _rain;
  double? _snow;
  int? _weatherConditionCode;
  String? _weatherMain;
  String? _weatherDescription;
  String? _weatherIcon;

  Map<String, dynamic>? toJson() => _data;
  DateTime? get date => _date;
  DateTime? get sunrise => _sunrise;
  DateTime? get sunset => _sunset;
  DateTime? get moonrise => _moonrise;
  DateTime? get moonset => _moonset;
  double? get moonPhase => _moonPhase;
  Temperature? get tempMorn => _tempMorn;
  Temperature? get tempDay => _tempDay;
  Temperature? get tempEve => _tempEve;
  Temperature? get tempNight => _tempNight;
  Temperature? get tempMin => _tempMin;
  Temperature? get tempMax => _tempMax;
  Temperature? get tempFeelsLikeMorn => _tempFeelsLikeMorn;
  Temperature? get tempFeelsLikeDay => _tempFeelsLikeDay;
  Temperature? get tempFeelsLikeEve => _tempFeelsLikeEve;
  Temperature? get tempFeelsLikeNight => _tempFeelsLikeNight;
  double? get pressure => _pressure;
  double? get humidity => _humidity;
  double? get dewPoint => _dewPoint;
  double? get windSpeed => _windSpeed;
  double? get windGust => _windGust;
  double? get windDegree => _windDegree;
  double? get clouds => _clouds;
  double? get uvi => _uvi;
  double? get pop => _pop;
  double? get rain => _rain;
  double? get snow => _snow;
  int? get weatherConditionCode => _weatherConditionCode;
  String? get weatherMain => _weatherMain;
  String? get weatherDescription => _weatherDescription;
  String? get weatherIcon => _weatherIcon;
}
