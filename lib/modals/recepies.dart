import 'package:flutter/material.dart';

enum Complexity { Simple, Challenging, Hard }

enum Affordability { Affordable, Pricey, Luxurious }

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final Complexity complexity;
  final Affordability affordability;
  final int duration;
  final List<String> steps;
  final List<String> ingredients;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

   const Meal(
      {required this.id,
      required this.categories,
        required this.title,
        required this.affordability,
        required this.complexity,
      required this.imageUrl,
        required this.duration,
        required this.ingredients,
      required this.steps,
      required this.isGlutenFree,
      required this.isVegan,
      required this.isVegetarian,
        required this.isLactoseFree
      });
}
