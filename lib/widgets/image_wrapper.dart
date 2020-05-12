import 'package:flutter/material.dart';
import 'package:flutter_flavors/widgets/generic_loading_spinner.dart';

class ImageWrapper extends StatelessWidget {
  ImageWrapper({@required this.imageProvider});

  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: imageProvider,
      fit: BoxFit.fill,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return GenericLoadingSpinner();
        }
      },
      errorBuilder: (context, error, stackTrace) {
        return Center(
          child: Text('Image unavailable'),
        );
      },
    );
  }
}
