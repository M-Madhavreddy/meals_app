import 'package:flutter/material.dart';
import 'package:meals_app/Screens/category_screen.dart';
import 'package:meals_app/Screens/categorylist.dart';

void main () => runApp( MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meals Recipes',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 250, 250, 0.7),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color : Color.fromRGBO(20, 50, 50, 1),
              ),
              bodyText2 : TextStyle(
                color : Color.fromRGBO(20, 50, 50, 1),
                fontFamily : 'RobotoCondensed' ,
              ),
              subtitle1 : TextStyle(
                fontSize: 20,
                fontFamily : 'RobotoCondensed',
              )


          )
      ),
      home : const _MyHomePage(),
      routes: {
        '/category-list' : (ctx) => CategoryList()
      },
    );
  }
}

class _MyHomePage extends StatelessWidget {
  const _MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Meals Recipes"),
      ),
      body: categoryScreen(),
    );
  }
}