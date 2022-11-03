import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routename = '/filtersScreen';
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      body: Container(
        child: Text('This is filters Screen'),
      ),
    );
  }
}
