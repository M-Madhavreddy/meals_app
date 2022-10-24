
import 'package:flutter/material.dart';
import './dummy_data.dart';


class CategoryList extends StatelessWidget {


  final String id ;
  final String title;
  final Color color;


  CategoryList( { required this.id ,required this.title , required this.color});

  final categoryid = id ;
  final categoryitems = DUMMY_MEALS.where((Meal) {
    return Meal.categories.contains( id );
  }).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(itemBuilder: (ctx , index) {
        return
      } ).toList();
    );
  }
}
