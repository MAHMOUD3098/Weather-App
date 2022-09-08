// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  final String country;
  final String main;
  final String description;
  final num temperature;
  final num minTemperature;
  final num maxTemperature;

  const Weather({
    required this.country,
    required this.main,
    required this.description,
    required this.temperature,
    required this.minTemperature,
    required this.maxTemperature,
  });

  @override
  List<Object> get props {
    return [
      main,
      description,
      temperature,
      minTemperature,
      maxTemperature,
    ];
  }
}
