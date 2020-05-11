import 'package:flutter/material.dart';
import 'package:flutter_flavors/config/app_config.dart';
import 'package:flutter_flavors/dog_stack.dart';

import 'package:flutter_flavors/generic_loading_spinner.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text(appConfig.appName),
        ),
        body: FutureBuilder(
          future: appConfig.dogRepository.getDogImages(),
          builder: (context, snapshot) {
            final dogImages = snapshot.data as List<ImageProvider>;
            if (snapshot.hasData) {
              return DogStack(
                images: dogImages,
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('There is an error in dog server'),
              );
            } else {
              return Center(
                child: GenericLoadingSpinner(),
              );
            }
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
