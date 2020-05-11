import 'package:flutter/material.dart';
import 'package:flutter_flavors/config/app_config.dart';

void mainCommon(AppConfig appConfig) {
  runApp(DogApp(
    appConfig: appConfig,
  ));
}

class DogApp extends StatelessWidget {
  final AppConfig appConfig;
  DogApp({@required this.appConfig});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(
        appConfig: appConfig,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, @required this.appConfig}) : super(key: key);

  final AppConfig appConfig;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final appConfig = widget.appConfig;
    return Scaffold(
      appBar: AppBar(
        title: Text(appConfig.appName),
      ),
    );
  }
}
