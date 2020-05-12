import 'package:flutter/material.dart';
import 'package:flutter_flavors/config/app_config.dart';
import 'package:flutter_flavors/dog_app.dart';

void mainCommon(AppConfig appConfig) {
  runApp(DogApp(
    appConfig,
  ));
}
