import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_flavors/repository/dog_repository.dart';
import 'package:http/http.dart' as http;

class DogRepositoryProd implements DogRepository {
  @override
  Future<List<ImageProvider>> getDogImages({int count = 1}) async {
    final response = await http.get('https://dog.ceo/api/breeds/image/random/$count');
    final List<ImageProvider> images =
        (json.decode(response.body)['message'] as List).map((dogUrl) => NetworkImage(dogUrl)).toList();

    return Future.value(images);
  }
}
