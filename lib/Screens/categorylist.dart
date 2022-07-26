import 'package:flutter/material.dart';
import '../Widgets/recepieslistview.dart';
import '../dummy_data.dart';
import '../modals/recepies.dart';

class CategoryList extends StatefulWidget {
  final List<Meal> availablemeals;
  CategoryList(this.availablemeals);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    final routearg =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryid = routearg['id'];
    final categorytitle = routearg['title'];

     final categoryitems = widget.availablemeals.where((meal) {
      return meal.categories.contains(categoryid);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(categorytitle!),
        ),
        body: ListView.builder(
            itemBuilder: (ctx, index) {
              return recepiesList(
                id: categoryitems[index].id,
                title: categoryitems[index].title,
                imageurl: categoryitems[index].imageUrl,
                duration: categoryitems[index].duration,
                complex: categoryitems[index].complexity,
                affordable: categoryitems[index].affordability,
              );
            },
            itemCount: categoryitems.length));
  }
}
