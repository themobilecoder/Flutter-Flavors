import 'package:flutter/material.dart';

abstract class DogRepository {
  Future<List<ImageProvider>> getDogImages({int count});
}
