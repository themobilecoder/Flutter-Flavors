import 'package:flutter_flavors/config/app_config.dart';
import 'package:flutter_flavors/config/app_config_prod.dart';
import 'package:flutter_flavors/main_common.dart';

void main() {
  final AppConfig appConfig = AppConfigProd();
  mainCommon(appConfig);
}
