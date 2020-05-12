import 'package:flutter_flavors/config/app_config.dart';
import 'package:flutter_flavors/config/app_config_dev.dart';
import 'package:flutter_flavors/main_common.dart';

void main() {
  final AppConfig appConfig = AppConfigDev();
  mainCommon(appConfig);
}
