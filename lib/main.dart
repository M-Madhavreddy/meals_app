import 'package:flutter/material.dart';
import 'package:meals_app/category_screen.dart';

void main () => runApp( MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meals Recipes',
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home : const _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatelessWidget {
  const _MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
         title: Text("'Meals Recipes'"),
       ),
      body: categoryScreen(),
    );
  }
}
