import 'package:flutter/material.dart';

class drawerPage extends StatelessWidget {
  const drawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              color: Theme.of(context).accentColor,
              child: Text(
                " COOKING UP!! ",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.deepOrange,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.restaurant,
                size: 26,
              ),
              title: Text('MEALS'),
              onTap: (){
                Navigator.of(context).pushNamed('/meals');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 26,
              ),
              title: Text('SETTINGS'),
              onTap: (){Navigator.of(context).pushNamed('/filtersScreen');},
            )
          ],
        ),
      ),
    );
  }
}
