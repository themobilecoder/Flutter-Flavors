import 'package:flutter/material.dart';
import 'package:flutter_flavors/repository/dog_repository.dart';

abstract class AppConfig {
  String get appName;
  DogRepository get dogRepository;
  ColorSwatch get colorSwatch;
}
