import 'package:flutter/material.dart';
import 'package:flutter_flavors/config/app_config.dart';
import 'package:flutter_flavors/repository/dog_repository.dart';
import 'package:flutter_flavors/repository/dog_repository_dev.dart';

class AppConfigDev implements AppConfig {
  final _dogRepository = DogRepositoryDev();
  final _appName = "(DEV) Dog Match";

  @override
  String get appName => _appName;

  @override
  DogRepository get dogRepository => _dogRepository;

  @override
  ColorSwatch get colorSwatch => Colors.orange;
}
