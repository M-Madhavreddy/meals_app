import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool glutenfree = false;

  bool lactosefree = false;

  bool isVegan = false;

  bool isVegetarian = false;

  @override
  Widget build(BuildContext context) {
    final routename = '/filtersScreen';
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Adjustment-Filters",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            SwitchListTile(
              title: Text(
                "Gluten-Free",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              value: glutenfree,
              subtitle: Text(
                "only Gluten-Free items",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              onChanged: (newvalue) {
                setState(() {
                  glutenfree = newvalue;
                });
              },
            ),
            SwitchListTile(
              title: Text(
                "Lactose-Free",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              value: lactosefree,
              subtitle: Text(
                "only Lactose-Free items",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              onChanged: (newvalue) {
                setState(() {
                  lactosefree = newvalue;
                });
              },
            ),
            SwitchListTile(
              title: Text(
                "Vegan",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              value: isVegan,
              subtitle: Text(
                "only Vegan items",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              onChanged: (newvalue) {
                setState(() {
                  isVegan = newvalue;
                });
              },
            ),
            SwitchListTile(
              title: Text(
                "Vegetarian",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              value: isVegetarian,
              subtitle: Text(
                "only Vegetarian items",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              onChanged: (newvalue) {
                setState(() {
                  isVegetarian = newvalue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
