import 'package:flutter/material.dart';
import 'package:flutter_flavors/repository/dog_repository.dart';

class DogRepositoryDev implements DogRepository {
  @override
  Future<List<ImageProvider>> getDogImages() {
    return Future.value([]);
  }
}
