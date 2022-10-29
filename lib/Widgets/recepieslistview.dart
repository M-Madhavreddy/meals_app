import 'package:flutter/material.dart';
import 'package:meals_app/modals/recepies.dart';

class recepiesList extends StatelessWidget {
  final String id;
  final String title;
  final String imageurl;
  final int duration;
  final Complexity complex;
  final Affordability affordable;

  recepiesList({
    required this.id,
    required this.title,
    required this.imageurl,
    required this.duration,
    required this.complex,
    required this.affordable,
  });

  String complexity() {
    switch (complex) {
      case Complexity.Simple:
        return ' simple ';
        break;
      case Complexity.Challenging:
        return ' Challenging ';
        break;
      case Complexity.Hard:
        return '  Hard ';
        break;
      default:
        return ' Undetermined ';
    }
  }
  String Affordable() {
    switch (affordable) {
      case Affordability.Affordable:
        return ' Affordable ';
        break;
      case Affordability.Pricey:
        return ' Pricey ';
        break;
      case Affordability.Luxurious:
        return '  Expensive ';
        break;
      default:
        return ' Undetermined ';
    }
  }


  void Selected(BuildContext context) {
    Navigator.of(context).pushNamed('/recepie-view',arguments: id );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Selected(context),
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
                ),
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      color: Colors.black54,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.schedule_rounded, color: Colors.black54),
                        Text(
                          '$duration' ' min',
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.work, color: Colors.black54),
                        Text(
                          complexity(),
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.monetization_on_outlined, color: Colors.black54),
                        Text(
                          Affordable(),
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
