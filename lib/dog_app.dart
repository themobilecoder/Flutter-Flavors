import 'package:flutter/material.dart';
import 'package:flutter_flavors/config/app_config.dart';
import 'package:flutter_flavors/widgets/dog_stack.dart';
import 'package:flutter_flavors/widgets/generic_button.dart';
import 'package:flutter_flavors/widgets/generic_loading_spinner.dart';

class DogApp extends StatefulWidget {
  DogApp(this.appConfig);

  final AppConfig appConfig;

  @override
  _DogAppState createState() => _DogAppState(appConfig);
}

class _DogAppState extends State<DogApp> {
  _DogAppState(this.appConfig);

  final AppConfig appConfig;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: appConfig.colorSwatch,
        backgroundColor: Theme.of(context).backgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(appConfig.appName),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            Center(
              child: GenericButton(
                child: Text('More dogs!'),
                onPressed: _refreshDogImages,
              ),
            ),
            Container(
              color: Theme.of(context).canvasColor,
              child: FutureBuilder(
                key: UniqueKey(),
                future: appConfig.dogRepository.getDogImages(),
                builder: (context, snapshot) {
                  final dogImages = snapshot.data as List<ImageProvider>;
                  if (snapshot.hasData) {
                    return DogStack(images: dogImages);
                  } else if (snapshot.hasError) {
                    return Center(child: Text('There is an error in dog server'));
                  } else {
                    return Center(
                      child: Container(child: GenericLoadingSpinner()),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  void _refreshDogImages() {
    setState(() {});
  }
}
