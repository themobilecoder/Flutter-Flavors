import 'package:flutter/material.dart';
import 'package:flutter_flavors/repository/dog_repository.dart';

class DogRepositoryDev implements DogRepository {
  @override
  Future<List<ImageProvider>> getDogImages({int count = 0}) {
    return Future.value(List.generate(count, (_) => AssetImage('assets/dog.jpg')));
  }
}
