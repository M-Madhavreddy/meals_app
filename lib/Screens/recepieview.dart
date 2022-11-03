import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';

class Recepieview extends StatelessWidget {
  const Recepieview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const routename = '/recepie-view';
    final recepieid = ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal =
        DUMMY_MEALS.firstWhere((element) => element.id == recepieid);

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              // ClipRRect(
              //   borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(15),
              //     topRight: Radius.circular(15),
              //   ),
              //   child:
              Image.network(
                selectedMeal.imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
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
                      selectedMeal.title,
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
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black54,
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 100),
              child: Text(
                'Ingredients',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: 200,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: ListView.builder(
              itemBuilder: (Ctx, index) => Card(
                color: Theme.of(context).accentColor,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    selectedMeal.ingredients[index],
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
              itemCount: selectedMeal.ingredients.length,
            ),
          )
        ],
      ),
    );
  }
}
