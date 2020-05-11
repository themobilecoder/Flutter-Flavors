import 'package:flutter_flavors/config/app_config.dart';
import 'package:flutter_flavors/config/app_config_dev.dart';
import 'package:flutter_flavors/main.dart';

void main() {
  final AppConfig appConfig = AppConfigDev();
  mainCommon(appConfig);
}
