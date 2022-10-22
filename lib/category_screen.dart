import 'package:flutter/material.dart';
import 'package:meals_app/modals/categoryview.dart';

import 'dummy_data.dart';

class categoryScreen extends StatelessWidget {
  const categoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEGORIES
          .map((ctg) => categoryView(bgcolor: ctg.color, title: ctg.title))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
          childAspectRatio:  5/ 4,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15),
    );
  }
}
