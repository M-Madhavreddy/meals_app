import 'package:flutter/material.dart';

class categoryView extends StatelessWidget {
  //const categoryView({Key? key}) : super(key: key);

  final String title;
  final Color bgcolor;

  categoryView({
    required this.bgcolor,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [bgcolor.withOpacity(0.5), bgcolor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Center(
            child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),),
      ),
    );
  }
}
