import 'package:flutter/material.dart';

abstract class DogRepository {
  Future<List<ImageProvider>> getDogImages();
}

class DogRepositoryProd implements DogRepository {
  @override
  Future<List<ImageProvider>> getDogImages() async {
    return Future.value([]);
  }
}
