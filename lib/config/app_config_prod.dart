import 'package:flutter/material.dart';
import 'package:flutter_flavors/config/app_config.dart';
import 'package:flutter_flavors/repository/dog_repository.dart';
import 'package:flutter_flavors/repository/dog_repository_prod.dart';

class AppConfigProd implements AppConfig {
  final _dogRepository = DogRepositoryProd();
  final _appName = "Dog Match";

  @override
  String get appName => _appName;

  @override
  DogRepository get dogRepository => _dogRepository;

  @override
  ColorSwatch get colorSwatch => Colors.deepPurple;
}
