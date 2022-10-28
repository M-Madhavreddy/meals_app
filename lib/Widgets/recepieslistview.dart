import 'package:flutter/material.dart';
import 'package:meals_app/modals/recepies.dart';

class recepiesList extends StatelessWidget {
  final String title;
  final String imageurl;
  final int duration;
  final Complexity complex;
  final Affordability affordable;

  recepiesList({
    required this.title,
    required this.imageurl,
    required this.duration,
    required this.complex,
    required this.affordable,
  });

  void Selected() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Selected,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        elevation: 4,
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageurl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
