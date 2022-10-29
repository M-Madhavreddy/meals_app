import 'package:flutter/material.dart';

class Recepieview extends StatelessWidget {
  const Recepieview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routename = '/recepie-view';
    final recepieid = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('$recepieid '),
      ),
      body: Center(
        child: Text('this recepie id is $recepieid'),
      ),
    );
  }
}
