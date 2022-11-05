import 'package:flutter/material.dart';
import './dummy_data.dart';
import './Screens/categorylist.dart';
import './Screens/FiltersScreen.dart';
import './Screens/tabs_screen.dart';
import './Screens/recepieview.dart';
import './modals/recepies.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> filters = {
    'gluten': false,
    'lactose': false,
    'isvegan': false,
    'isvegetarian': false
  };

  List<Meal> availablemeals = DUMMY_MEALS;

  void savefilters(Map<String, bool> filtersdata) {
   setState(() {
      filters = filtersdata;

      availablemeals = DUMMY_MEALS.where((meal) {
        if ((filters['gluten'] == true)&& !meal.isGlutenFree) {
          return false;
        }
          if (filters['lactose']== true && !meal.isLactoseFree) {
            return false;
          }
            if (filters['isvegan']== true && !meal.isVegan) {
              return false;
            }
            if ((filters['isvegetarian']== true) && !meal.isVegetarian) {
                return false;
            }
            return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meals Recipes',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 250, 250, 0.7),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 50, 50, 1),
                fontSize: 20,
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 50, 50, 1),
                fontFamily: 'RobotoCondensed',
              ),
              subtitle1: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                color: Colors.white,
              ))),
      home: tabsScreen(),
      routes: {
        '/meals': (ctx) => tabsScreen(),
        '/category-list': (ctx) => CategoryList(availablemeals),
        '/recepie-view': (ctx) => Recepieview(),
        '/filtersScreen': (ctx) => FiltersScreen(savefilters),
      },
    );
  }
}
