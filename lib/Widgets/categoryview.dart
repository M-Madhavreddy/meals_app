import 'package:flutter/material.dart';
import 'package:meals_app/Screens/categorylist.dart';

class categoryView extends StatelessWidget {
  //const categoryView({Key? key}) : super(key: key);
  final String id;
  final String title;
  final Color bgcolor;

  categoryView({
    required this.bgcolor,
    required this.title,
    required this.id,
  });

  void selected(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/category-list', arguments: {
      'id': id,
      'title': title,
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
          onTap: () => selected(context),
          splashColor: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [bgcolor.withOpacity(0.5), bgcolor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),  borderRadius: BorderRadius.circular(20),
          ),

          ),
      ),
    );
  }
}
