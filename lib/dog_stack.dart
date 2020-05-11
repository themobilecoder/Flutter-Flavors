import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DogStack extends StatefulWidget {
  DogStack({@required this.images});

  final List<ImageProvider> images;

  @override
  _DogStackState createState() => _DogStackState();
}

class _DogStackState extends State<DogStack> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    widget.images.forEach((image) {
      precacheImage(image, context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> dogWidgets = [];
    widget.images.asMap().forEach((index, imageProvider) {
      dogWidgets.add(Dismissible(
        key: UniqueKey(),
        child: Container(
          color: Theme.of(context).canvasColor,
          child: Center(
            child: Image(
              image: widget.images[index],
              fit: BoxFit.fill,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return CupertinoActivityIndicator();
                }
              },
              errorBuilder: (context, error, stackTrace) {
                return Center(
                  child: Text('Image unavailable'),
                );
              },
            ),
          ),
        ),
      ));
    });
    return Stack(
      children: dogWidgets,
    );
  }
}
