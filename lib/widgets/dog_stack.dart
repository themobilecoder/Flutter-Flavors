import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavors/widgets/image_wrapper.dart';
import 'package:toast/toast.dart';

class DogStack extends StatelessWidget {
  DogStack({@required this.images});

  final List<ImageProvider> images;

  @override
  Widget build(BuildContext context) {
    final List<Widget> dogWidgets = [];
    images.asMap().forEach((index, imageProvider) {
      dogWidgets.add(Dismissible(
        key: UniqueKey(),
        onDismissed: (direction) {
          if (direction == DismissDirection.startToEnd) {
            _showLikeMessage(context);
          } else if (direction == DismissDirection.endToStart) {
            _showDislikeMessage(context);
          }
        },
        child: Container(
          color: Theme.of(context).canvasColor,
          child: Center(
            child: ImageWrapper(imageProvider: images[index]),
          ),
        ),
      ));
    });
    return Stack(
      children: dogWidgets,
    );
  }

  void _showLikeMessage(BuildContext context) {
    Toast.show('Liked!', context, backgroundColor: Colors.green, duration: Toast.LENGTH_LONG);
  }

  void _showDislikeMessage(BuildContext context) {
    Toast.show('Nope!', context, backgroundColor: Colors.red, duration: Toast.LENGTH_LONG);
  }
}
