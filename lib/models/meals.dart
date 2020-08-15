import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

enum Complexity { Simple, Challenging, Hard }
enum Affordability { Affordable, Pricey, Cuxorious }

class Meals {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGluttenFree;
  final bool isLactosseFree;
  final bool isVegan;
  final bool isVegeterian;

  const Meals({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.affordability,
    @required this.complexity,
    @required this.isGluttenFree,
    @required this.isLactosseFree,
    @required this.isVegan,
    @required this.isVegeterian,
  });
}
