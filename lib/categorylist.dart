import 'dart:ui';
import 'dart:ui';
import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {


  //final String id;
  final String title;
  final Color color;

  CategoryList( {required this.title , required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('category items are available here'),
      ),
    );
  }
}
